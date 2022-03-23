import 'package:dartz/dartz.dart';

import '../../../../common/03_domain/failures/failures.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/03_domain/value_objects/value_validators.dart';


class RegisteredEntry extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory RegisteredEntry(int input) {
    assert(input != null);
    return RegisteredEntry._(
      validatePositiveIntNumber(input),
    );
  }

  const RegisteredEntry._(this.value);
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
    if(input.isEmpty) {
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

class MapImageId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory MapImageId(String input) {
    assert(input != null);
    return MapImageId._(
      validateStringNotEmpty(input),
    );
  }

  const MapImageId._(this.value);
}
