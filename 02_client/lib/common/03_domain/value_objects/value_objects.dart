import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

import '../errors/unexpected_value_error.dart';
import '../failures/failures.dart';
import '../i_validatable.dart';
import 'value_validators.dart';

abstract class ValueObject<T> implements IValidatable {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  T getOrElse(T dflt) {
    return value.getOrElse(() => dflt);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  bool isValid() {
    return value.isRight();
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(
      right(Uuid().v1()),
    );
  }

  factory UniqueId.fromFirebaseId(String firebaseId) {
    assert(firebaseId != null);
    return UniqueId._(
      right(firebaseId),
    );
  }

  const UniqueId._(this.value);
}

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 32;

  factory Name(String input, [bool minimumCharsRequired = false]) {
    assert(input != null);
    if (minimumCharsRequired) {
      return Name._(
        validateMaxStringLength(input, maxLength)
            .flatMap(validateStringNotEmpty),
      );
    } else {
      return Name._(
        validateMaxStringLength(input, maxLength),
      );
    }
  }

  const Name._(this.value);
}

class CoordinateValue extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  static const defaultValue = -10.0;

  factory CoordinateValue(double input) {
    assert(input != null);
    return CoordinateValue._(
      validatePositiveDoubleNumber(input),
    );
  }

  factory CoordinateValue.fromString(String input) {
    assert(input != null);
    if (input.isEmpty) {
      return CoordinateValue._(
        left(ValueFailure.empty()),
      );
    }
    final parsedValue = double.tryParse(input);
    if (parsedValue != null) {
      return CoordinateValue._(
        validatePositiveDoubleNumber(parsedValue),
      );
    } else {
      return CoordinateValue._(
        left(ValueFailure.numberCannotBeParsed(failedValue: input)),
      );
    }
  }

  factory CoordinateValue.fromStringWithMax(String input, double maxValue) {
    assert(input != null);
    assert(maxValue != null);

    if (input.isEmpty) {
      return CoordinateValue._(
        left(ValueFailure.empty()),
      );
    }
    final parsedValue = double.tryParse(input);
    if (parsedValue != null) {
      if (!(maxValue <= 0.0)) {
        return CoordinateValue._(
          validateDoubleNumberInRange(
            input: parsedValue,
            minValue: 0.0,
            maxValue: maxValue,
          ),
        );
      } else {
        return CoordinateValue._(
          validatePositiveDoubleNumber(parsedValue),
        );
      }
    } else {
      return CoordinateValue._(
        left(ValueFailure.numberCannotBeParsed(failedValue: input)),
      );
    }
  }

  const CoordinateValue._(this.value);
}

class FloorNumber extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  static const maxNumber = 25;

  factory FloorNumber(int input, [bool markAsNotUnique = false]) {
    assert(input != null);

    if(markAsNotUnique) {
      return FloorNumber._(
        left(ValueFailure.notUnique(failedValue: input)),
      );
    }

    return FloorNumber._(
      validateMaxNumber(input, maxNumber).flatMap(validatePositiveIntNumber),
    );
  }

  factory FloorNumber.fromString(String input) {
    assert(input != null);
    if (input.isEmpty) {
      return FloorNumber._(
        left(ValueFailure.empty()),
      );
    }
    final parsedValue = int.tryParse(input);
    if (parsedValue != null) {
      return FloorNumber._(
        validateMaxNumber(parsedValue, maxNumber)
            .flatMap(validatePositiveIntNumberBiggerZero),
      );
    } else {
      return FloorNumber._(
        left(ValueFailure.numberCannotBeParsed(failedValue: input)),
      );
    }
  }

  const FloorNumber._(this.value);
}

class SSID extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 32;

  factory SSID(String input) {
    assert(input != null);
    return SSID._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const SSID._(this.value);
}

class BSSID extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 48;

  factory BSSID(String input) {
    assert(input != null);
    return BSSID._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const BSSID._(this.value);
}

class RSS extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  static const minRSSValue = -110.0;
  static const maxRSSValue = 1.0;
  static const notReceived = -5000.0;

  factory RSS(double input) {
    assert(input != null);
    return RSS._(
      validateNumberInRangeWithException(
        input: input,
        exceptionValue: notReceived,
        minValue: minRSSValue,
        maxValue: maxRSSValue,
      ),
    );
  }

  const RSS._(this.value);
}

class Distance extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory Distance(double input) {
    assert(input != null);
    return Distance._(validatePositiveDoubleNumber(input));
  }

  const Distance._(this.value);
}
