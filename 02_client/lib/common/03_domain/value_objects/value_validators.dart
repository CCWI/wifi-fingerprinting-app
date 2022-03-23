import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

import '../failures/failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLength(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateFilePath(String input) {
  final File file = File(input);
  if (!file.existsSync()) {
    return left(
      ValueFailure.incorrectFilePath(filePath: input),
    );
  } else {
    return right(input);
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
    KtList<T> input, int maxLength) {
  if (input.size > maxLength) {
    return left(
      ValueFailure.listTooLong(
        failedValue: input,
        max: maxLength,
      ),
    );
  } else {
    return right(input);
  }
}

Either<ValueFailure<double>, double> validatePositiveDoubleNumber(
    double input) {
  if (input < 0.0) {
    return left(
      ValueFailure.negativeNumber(
        failedValue: input,
      ),
    );
  } else {
    return right(input);
  }
}

Either<ValueFailure<int>, int> validatePositiveIntNumber(int input) {
  if (input < 0) {
    return left(
      ValueFailure.negativeNumber(
        failedValue: input,
      ),
    );
  } else {
    return right(input);
  }
}

Either<ValueFailure<int>, int> validatePositiveIntNumberBiggerZero(int input) {
  if (input <= 0) {
    return left(
      ValueFailure.negativeNumberOrZero(
        failedValue: input,
      ),
    );
  } else {
    return right(input);
  }
}

Either<ValueFailure<int>, int> validateNumberInRange({
  @required int input,
  @required int minValue,
  @required int maxValue,
}) {
  if (input < minValue || input > maxValue) {
    return left(
      ValueFailure.numberOutOfRange(
        failedValue: input,
        min: minValue,
        max: maxValue,
      ),
    );
  } else {
    return right(input);
  }
}

Either<ValueFailure<double>, double> validateDoubleNumberInRange({
  @required double input,
  @required double minValue,
  @required double maxValue,
}) {
  if (input < minValue || input > maxValue) {
    return left(
      ValueFailure.numberOutOfRange(
        failedValue: input,
        min: minValue,
        max: maxValue,
      ),
    );
  } else {
    return right(input);
  }
}

Either<ValueFailure<double>, double> validateNumberInRangeWithException({
  @required double input,
  @required double exceptionValue,
  @required double minValue,
  @required double maxValue,
}) {
  if ((input < minValue || input > maxValue) && (input != exceptionValue)) {
    return left(
      ValueFailure.numberOutOfRange(
        failedValue: input,
        min: minValue,
        max: maxValue,
      ),
    );
  } else {
    return right(input);
  }
}

Either<ValueFailure<int>, int> validateMaxNumber(int input, int maxNumber) {
  if (input > maxNumber) {
    return left(
      ValueFailure.numberTooLarge(
        failedValue: input,
        max: maxNumber,
      ),
    );
  } else {
    return right(input);
  }
}

Either<ValueFailure<int>, int> validateMaxNumberWithException(int input, int exception, int maxNumber) {
  if (input > maxNumber && input != exception) {
    return left(
      ValueFailure.numberTooLarge(
        failedValue: input,
        max: maxNumber,
      ),
    );
  } else {
    return right(input);
  }
}
