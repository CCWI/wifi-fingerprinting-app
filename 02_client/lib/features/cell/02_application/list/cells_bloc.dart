import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../03_domain/entities/cell.dart';
import '../../03_domain/failures/cell_failure.dart';
import '../../03_domain/repositories/i_cell_repository.dart';

part 'cells_bloc.freezed.dart';
part 'cells_event.dart';
part 'cells_state.dart';

@injectable
class CellsBloc extends Bloc<CellsEvent, CellsState> {
  final ICellRepository _cRepository;
  StreamSubscription<Either<CellFailure, KtList<Cell>>> _cSubscription;

  CellsBloc({
    @required ICellRepository cRepository,
  })  : assert(cRepository != null),
        _cRepository = cRepository,
        super(CellsState.initial());

  @override
  Stream<CellsState> mapEventToState(
    CellsEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const CellsState.loadInProgress();
        await _cSubscription?.cancel();
        _cSubscription = _cRepository
            .watchAllFromProject(e.projectId)
            .listen((cells) => add(CellsEvent.cellsReceived(cells)));
      },
      cellsReceived: (e) async* {
        yield e.failureOrCells.fold(
          (f) => CellsState.loadFailure(f),
          (cells) => CellsState.loadSuccess(cells),
        );
      },
    );
  }
}
