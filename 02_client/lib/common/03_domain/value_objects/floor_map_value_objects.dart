import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import '../failures/failures.dart';
import 'value_objects.dart';
import 'value_validators.dart';

class Path extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Path.empty() {
    return Path._(
      right('-'),
    );
  }

  factory Path(String input) {
    assert(input != null);
    return Path._(
      validateStringNotEmpty(input),
    );
  }

  const Path._(this.value);
}

class CloudImagePath extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory CloudImagePath.empty() {
    return CloudImagePath._(
      right('-'),
    );
  }

  factory CloudImagePath(String input) {
    assert(input != null);
    return CloudImagePath._(
      validateStringNotEmpty(input),
    );
  }

  const CloudImagePath._(this.value);
}

class Scale extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory Scale(int input) {
    assert(input != null);
    return Scale._(
      validatePositiveIntNumberBiggerZero(input),
    );
  }

  factory Scale.fromString(String input) {
    assert(input != null);
    if (input.isEmpty) {
      return Scale._(left(ValueFailure.empty()));
    }

    final parsedValue = int.tryParse(input);
    if (parsedValue != null) {
      return Scale._(
        validatePositiveIntNumberBiggerZero(parsedValue),
      );
    } else {
      return Scale._(
        left(ValueFailure.numberCannotBeParsed(failedValue: input)),
      );
    }
  }

  const Scale._(this.value);
}

class List25<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 25;

  factory List25(KtList<T> input) {
    assert(input != null);
    return List25._(
      validateMaxListLength(input, maxLength),
    );
  }

  const List25._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}
