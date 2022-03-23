import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../03_domain/entities/access_point.dart';
import '../../03_domain/failures/access_point_failures.dart';
import '../../03_domain/repositories/i_access_point_repository.dart';

part 'access_point_form_bloc.freezed.dart';
part 'access_point_form_event.dart';
part 'access_point_form_state.dart';

@injectable
class AccessPointFormBloc
    extends Bloc<AccessPointFormEvent, AccessPointFormState> {
  final IAccessPointRepository _apRepository;

  AccessPointFormBloc({
    @required IAccessPointRepository apRepository,
  })  : assert(apRepository != null),
        _apRepository = apRepository,
        super(AccessPointFormState.initial());

  @override
  Stream<AccessPointFormState> mapEventToState(
    AccessPointFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialAccessPointOption.fold(
          () {
            return state.copyWith(
              accessPoint: state.accessPoint.copyWith(
                projectId: e.projectId,
              ),
              saveFailureOrSuccessOption: none(),
            );
          },
          (initialAccessPoint) {
            return state.copyWith(
              accessPoint: initialAccessPoint.copyWith(
                projectId: e.projectId,
              ),
              isEditing: initialAccessPoint.projectId == e.projectId,
            );
          },
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          accessPoint: state.accessPoint.copyWith(
            name: Name(e.nameStr),
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<AccessPointFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.accessPoint.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _apRepository.update(state.accessPoint)
              : await _apRepository.create(state.accessPoint);
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      deleted: (e) async* {
        Either<AccessPointFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isDeleting: true,
          deleteFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await _apRepository.delete(e.id);

        yield state.copyWith(
          isDeleting: false,
          showErrorMessages: false,
          deleteFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
