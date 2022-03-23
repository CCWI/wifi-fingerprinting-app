import 'package:dartz/dartz.dart';

import '../failures/failures.dart';
import 'value_objects.dart';
import 'value_validators.dart';

class KnnKValue extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  static const minValue = 1;
  static const maxValue = 40;

  factory KnnKValue(int input) {
    assert(input != null);
    return KnnKValue._(
      validateNumberInRange(input: input, minValue: minValue, maxValue: maxValue)
    );
  }

    factory KnnKValue.fromString(String input) {
    assert(input != null);
    if (input.isEmpty) {
      return KnnKValue._(
        left(ValueFailure.empty()),
      );
    }
    final parsedValue = int.tryParse(input);
    if (parsedValue != null) {
      return KnnKValue._(
        validateNumberInRange(input: parsedValue, minValue: minValue, maxValue: maxValue),
      );
    } else {
      return KnnKValue._(
        left(ValueFailure.numberCannotBeParsed(failedValue: input)),
      );
    }
  }

  const KnnKValue._(this.value);
}