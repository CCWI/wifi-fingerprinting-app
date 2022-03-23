import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    @required T failedValue,
    @required int max,
  }) = ExceedingLength<T>;
  const factory ValueFailure.empty({
    T failedValue,
  }) = Empty<T>;
  const factory ValueFailure.notUnique({
    T failedValue,
  }) = NotUnique<T>;
  const factory ValueFailure.multiline({
    @required T failedValue,
  }) = Multiline<T>;
  const factory ValueFailure.numberTooLarge({
    @required T failedValue,
    @required num max,
  }) = NumberTooLarge<T>;
  const factory ValueFailure.listTooLong({
    @required T failedValue,
    @required int max,
  }) = ListTooLong<T>;
  const factory ValueFailure.invalidPhotoUrl({
    @required T failedValue,
  }) = InvalidPhotoUrl<T>;
  const factory ValueFailure.negativeNumber({
    @required T failedValue,
  }) = NegativeNumber<T>;
  const factory ValueFailure.incorrectFilePath({
    @required String filePath,
  }) = IncorrectFilePath<T>;
  const factory ValueFailure.negativeNumberOrZero({
    @required T failedValue,
  }) = NegativeNumberOrZero<T>;
  const factory ValueFailure.numberCannotBeParsed({
    @required String failedValue,
  }) = NumberCannotBeParsed<T>;
  const factory ValueFailure.numberOutOfRange({
    @required T failedValue,
    @required num min,
    @required num max,
  }) = NumberOutOfRange<T>;
}