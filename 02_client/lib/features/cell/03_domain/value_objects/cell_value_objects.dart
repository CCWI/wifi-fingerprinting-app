import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import '../../../../common/03_domain/failures/failures.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/03_domain/value_objects/value_validators.dart';

class List4<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 4;

  factory List4(KtList<T> input) {
    assert(input != null);
    return List4._(
      validateMaxListLength(input, maxLength),
    );
  }

  const List4._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}
