import 'package:dartz/dartz.dart';

import '../failures/failures.dart';
import 'value_objects.dart';
import 'value_validators.dart';

class Frequency extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  static const minFrequency = 2400;
  static const maxFrequency = 6000;

  factory Frequency(int input) {
    assert(input != null);
    return Frequency._(
      validateNumberInRange(input: input, minValue: minFrequency, maxValue: maxFrequency),
    );
  }

  factory Frequency.fromString(String input) {
    assert(input != null);
    if (input.isEmpty) {
      return Frequency._(
        left(ValueFailure.empty(failedValue: 0)),
      );
    }
    final parsedValue = int.tryParse(input);
    if (parsedValue != null) {
      return Frequency._(
        validateNumberInRange(input: parsedValue, minValue: minFrequency, maxValue: maxFrequency),
      );
    } else {
      return Frequency._(
        left(ValueFailure.numberCannotBeParsed(failedValue: input)),
      );
    }
  }

  const Frequency._(this.value);
}