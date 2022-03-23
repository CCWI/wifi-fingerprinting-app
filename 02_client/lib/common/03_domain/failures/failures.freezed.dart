// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  ExceedingLength<T> exceedingLength<T>(
      {@required T failedValue, @required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  Empty<T> empty<T>({T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  NotUnique<T> notUnique<T>({T failedValue}) {
    return NotUnique<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  Multiline<T> multiline<T>({@required T failedValue}) {
    return Multiline<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  NumberTooLarge<T> numberTooLarge<T>(
      {@required T failedValue, @required num max}) {
    return NumberTooLarge<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  ListTooLong<T> listTooLong<T>({@required T failedValue, @required int max}) {
    return ListTooLong<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  InvalidPhotoUrl<T> invalidPhotoUrl<T>({@required T failedValue}) {
    return InvalidPhotoUrl<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  NegativeNumber<T> negativeNumber<T>({@required T failedValue}) {
    return NegativeNumber<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  IncorrectFilePath<T> incorrectFilePath<T>({@required String filePath}) {
    return IncorrectFilePath<T>(
      filePath: filePath,
    );
  }

// ignore: unused_element
  NegativeNumberOrZero<T> negativeNumberOrZero<T>({@required T failedValue}) {
    return NegativeNumberOrZero<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  NumberCannotBeParsed<T> numberCannotBeParsed<T>(
      {@required String failedValue}) {
    return NumberCannotBeParsed<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  NumberOutOfRange<T> numberOutOfRange<T>(
      {@required T failedValue, @required num min, @required num max}) {
    return NumberOutOfRange<T>(
      failedValue: failedValue,
      min: min,
      max: max,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result notUnique(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result negativeNumber(T failedValue),
    @required Result incorrectFilePath(String filePath),
    @required Result negativeNumberOrZero(T failedValue),
    @required Result numberCannotBeParsed(String failedValue),
    @required Result numberOutOfRange(T failedValue, num min, num max),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result notUnique(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidPhotoUrl(T failedValue),
    Result negativeNumber(T failedValue),
    Result incorrectFilePath(String filePath),
    Result negativeNumberOrZero(T failedValue),
    Result numberCannotBeParsed(String failedValue),
    Result numberOutOfRange(T failedValue, num min, num max),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result notUnique(NotUnique<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result negativeNumber(NegativeNumber<T> value),
    @required Result incorrectFilePath(IncorrectFilePath<T> value),
    @required Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    @required Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    @required Result numberOutOfRange(NumberOutOfRange<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result notUnique(NotUnique<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result negativeNumber(NegativeNumber<T> value),
    Result incorrectFilePath(IncorrectFilePath<T> value),
    Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    Result numberOutOfRange(NumberOutOfRange<T> value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

/// @nodoc
class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result notUnique(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result negativeNumber(T failedValue),
    @required Result incorrectFilePath(String filePath),
    @required Result negativeNumberOrZero(T failedValue),
    @required Result numberCannotBeParsed(String failedValue),
    @required Result numberOutOfRange(T failedValue, num min, num max),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result notUnique(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidPhotoUrl(T failedValue),
    Result negativeNumber(T failedValue),
    Result incorrectFilePath(String filePath),
    Result negativeNumberOrZero(T failedValue),
    Result numberCannotBeParsed(String failedValue),
    Result numberOutOfRange(T failedValue, num min, num max),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result notUnique(NotUnique<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result negativeNumber(NegativeNumber<T> value),
    @required Result incorrectFilePath(IncorrectFilePath<T> value),
    @required Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    @required Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    @required Result numberOutOfRange(NumberOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result notUnique(NotUnique<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result negativeNumber(NegativeNumber<T> value),
    Result incorrectFilePath(IncorrectFilePath<T> value),
    Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    Result numberOutOfRange(NumberOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength({@required T failedValue, @required int max}) =
      _$ExceedingLength<T>;

  T get failedValue;
  int get max;
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$Empty<T> implements Empty<T> {
  const _$Empty({this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result notUnique(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result negativeNumber(T failedValue),
    @required Result incorrectFilePath(String filePath),
    @required Result negativeNumberOrZero(T failedValue),
    @required Result numberCannotBeParsed(String failedValue),
    @required Result numberOutOfRange(T failedValue, num min, num max),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result notUnique(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidPhotoUrl(T failedValue),
    Result negativeNumber(T failedValue),
    Result incorrectFilePath(String filePath),
    Result negativeNumberOrZero(T failedValue),
    Result numberCannotBeParsed(String failedValue),
    Result numberOutOfRange(T failedValue, num min, num max),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result notUnique(NotUnique<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result negativeNumber(NegativeNumber<T> value),
    @required Result incorrectFilePath(IncorrectFilePath<T> value),
    @required Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    @required Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    @required Result numberOutOfRange(NumberOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result notUnique(NotUnique<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result negativeNumber(NegativeNumber<T> value),
    Result incorrectFilePath(IncorrectFilePath<T> value),
    Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    Result numberOutOfRange(NumberOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({T failedValue}) = _$Empty<T>;

  T get failedValue;
  $EmptyCopyWith<T, Empty<T>> get copyWith;
}

/// @nodoc
abstract class $NotUniqueCopyWith<T, $Res> {
  factory $NotUniqueCopyWith(
          NotUnique<T> value, $Res Function(NotUnique<T>) then) =
      _$NotUniqueCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$NotUniqueCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NotUniqueCopyWith<T, $Res> {
  _$NotUniqueCopyWithImpl(
      NotUnique<T> _value, $Res Function(NotUnique<T>) _then)
      : super(_value, (v) => _then(v as NotUnique<T>));

  @override
  NotUnique<T> get _value => super._value as NotUnique<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(NotUnique<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$NotUnique<T> implements NotUnique<T> {
  const _$NotUnique({this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.notUnique(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotUnique<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $NotUniqueCopyWith<T, NotUnique<T>> get copyWith =>
      _$NotUniqueCopyWithImpl<T, NotUnique<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result notUnique(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result negativeNumber(T failedValue),
    @required Result incorrectFilePath(String filePath),
    @required Result negativeNumberOrZero(T failedValue),
    @required Result numberCannotBeParsed(String failedValue),
    @required Result numberOutOfRange(T failedValue, num min, num max),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return notUnique(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result notUnique(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidPhotoUrl(T failedValue),
    Result negativeNumber(T failedValue),
    Result incorrectFilePath(String filePath),
    Result negativeNumberOrZero(T failedValue),
    Result numberCannotBeParsed(String failedValue),
    Result numberOutOfRange(T failedValue, num min, num max),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notUnique != null) {
      return notUnique(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result notUnique(NotUnique<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result negativeNumber(NegativeNumber<T> value),
    @required Result incorrectFilePath(IncorrectFilePath<T> value),
    @required Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    @required Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    @required Result numberOutOfRange(NumberOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return notUnique(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result notUnique(NotUnique<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result negativeNumber(NegativeNumber<T> value),
    Result incorrectFilePath(IncorrectFilePath<T> value),
    Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    Result numberOutOfRange(NumberOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notUnique != null) {
      return notUnique(this);
    }
    return orElse();
  }
}

abstract class NotUnique<T> implements ValueFailure<T> {
  const factory NotUnique({T failedValue}) = _$NotUnique<T>;

  T get failedValue;
  $NotUniqueCopyWith<T, NotUnique<T>> get copyWith;
}

/// @nodoc
abstract class $MultilineCopyWith<T, $Res> {
  factory $MultilineCopyWith(
          Multiline<T> value, $Res Function(Multiline<T>) then) =
      _$MultilineCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$MultilineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MultilineCopyWith<T, $Res> {
  _$MultilineCopyWithImpl(
      Multiline<T> _value, $Res Function(Multiline<T>) _then)
      : super(_value, (v) => _then(v as Multiline<T>));

  @override
  Multiline<T> get _value => super._value as Multiline<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Multiline<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$Multiline<T> implements Multiline<T> {
  const _$Multiline({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiline(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Multiline<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $MultilineCopyWith<T, Multiline<T>> get copyWith =>
      _$MultilineCopyWithImpl<T, Multiline<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result notUnique(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result negativeNumber(T failedValue),
    @required Result incorrectFilePath(String filePath),
    @required Result negativeNumberOrZero(T failedValue),
    @required Result numberCannotBeParsed(String failedValue),
    @required Result numberOutOfRange(T failedValue, num min, num max),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result notUnique(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidPhotoUrl(T failedValue),
    Result negativeNumber(T failedValue),
    Result incorrectFilePath(String filePath),
    Result negativeNumberOrZero(T failedValue),
    Result numberCannotBeParsed(String failedValue),
    Result numberOutOfRange(T failedValue, num min, num max),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multiline != null) {
      return multiline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result notUnique(NotUnique<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result negativeNumber(NegativeNumber<T> value),
    @required Result incorrectFilePath(IncorrectFilePath<T> value),
    @required Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    @required Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    @required Result numberOutOfRange(NumberOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result notUnique(NotUnique<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result negativeNumber(NegativeNumber<T> value),
    Result incorrectFilePath(IncorrectFilePath<T> value),
    Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    Result numberOutOfRange(NumberOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements ValueFailure<T> {
  const factory Multiline({@required T failedValue}) = _$Multiline<T>;

  T get failedValue;
  $MultilineCopyWith<T, Multiline<T>> get copyWith;
}

/// @nodoc
abstract class $NumberTooLargeCopyWith<T, $Res> {
  factory $NumberTooLargeCopyWith(
          NumberTooLarge<T> value, $Res Function(NumberTooLarge<T>) then) =
      _$NumberTooLargeCopyWithImpl<T, $Res>;
  $Res call({T failedValue, num max});
}

/// @nodoc
class _$NumberTooLargeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NumberTooLargeCopyWith<T, $Res> {
  _$NumberTooLargeCopyWithImpl(
      NumberTooLarge<T> _value, $Res Function(NumberTooLarge<T>) _then)
      : super(_value, (v) => _then(v as NumberTooLarge<T>));

  @override
  NumberTooLarge<T> get _value => super._value as NumberTooLarge<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(NumberTooLarge<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as num,
    ));
  }
}

/// @nodoc
class _$NumberTooLarge<T> implements NumberTooLarge<T> {
  const _$NumberTooLarge({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final num max;

  @override
  String toString() {
    return 'ValueFailure<$T>.numberTooLarge(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NumberTooLarge<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $NumberTooLargeCopyWith<T, NumberTooLarge<T>> get copyWith =>
      _$NumberTooLargeCopyWithImpl<T, NumberTooLarge<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result notUnique(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result negativeNumber(T failedValue),
    @required Result incorrectFilePath(String filePath),
    @required Result negativeNumberOrZero(T failedValue),
    @required Result numberCannotBeParsed(String failedValue),
    @required Result numberOutOfRange(T failedValue, num min, num max),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return numberTooLarge(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result notUnique(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidPhotoUrl(T failedValue),
    Result negativeNumber(T failedValue),
    Result incorrectFilePath(String filePath),
    Result negativeNumberOrZero(T failedValue),
    Result numberCannotBeParsed(String failedValue),
    Result numberOutOfRange(T failedValue, num min, num max),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (numberTooLarge != null) {
      return numberTooLarge(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result notUnique(NotUnique<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result negativeNumber(NegativeNumber<T> value),
    @required Result incorrectFilePath(IncorrectFilePath<T> value),
    @required Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    @required Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    @required Result numberOutOfRange(NumberOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return numberTooLarge(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result notUnique(NotUnique<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result negativeNumber(NegativeNumber<T> value),
    Result incorrectFilePath(IncorrectFilePath<T> value),
    Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    Result numberOutOfRange(NumberOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (numberTooLarge != null) {
      return numberTooLarge(this);
    }
    return orElse();
  }
}

abstract class NumberTooLarge<T> implements ValueFailure<T> {
  const factory NumberTooLarge({@required T failedValue, @required num max}) =
      _$NumberTooLarge<T>;

  T get failedValue;
  num get max;
  $NumberTooLargeCopyWith<T, NumberTooLarge<T>> get copyWith;
}

/// @nodoc
abstract class $ListTooLongCopyWith<T, $Res> {
  factory $ListTooLongCopyWith(
          ListTooLong<T> value, $Res Function(ListTooLong<T>) then) =
      _$ListTooLongCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ListTooLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ListTooLongCopyWith<T, $Res> {
  _$ListTooLongCopyWithImpl(
      ListTooLong<T> _value, $Res Function(ListTooLong<T>) _then)
      : super(_value, (v) => _then(v as ListTooLong<T>));

  @override
  ListTooLong<T> get _value => super._value as ListTooLong<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ListTooLong<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

/// @nodoc
class _$ListTooLong<T> implements ListTooLong<T> {
  const _$ListTooLong({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListTooLong<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith =>
      _$ListTooLongCopyWithImpl<T, ListTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result notUnique(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result negativeNumber(T failedValue),
    @required Result incorrectFilePath(String filePath),
    @required Result negativeNumberOrZero(T failedValue),
    @required Result numberCannotBeParsed(String failedValue),
    @required Result numberOutOfRange(T failedValue, num min, num max),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result notUnique(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidPhotoUrl(T failedValue),
    Result negativeNumber(T failedValue),
    Result incorrectFilePath(String filePath),
    Result negativeNumberOrZero(T failedValue),
    Result numberCannotBeParsed(String failedValue),
    Result numberOutOfRange(T failedValue, num min, num max),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result notUnique(NotUnique<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result negativeNumber(NegativeNumber<T> value),
    @required Result incorrectFilePath(IncorrectFilePath<T> value),
    @required Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    @required Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    @required Result numberOutOfRange(NumberOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result notUnique(NotUnique<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result negativeNumber(NegativeNumber<T> value),
    Result incorrectFilePath(IncorrectFilePath<T> value),
    Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    Result numberOutOfRange(NumberOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ListTooLong<T> implements ValueFailure<T> {
  const factory ListTooLong({@required T failedValue, @required int max}) =
      _$ListTooLong<T>;

  T get failedValue;
  int get max;
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidPhotoUrlCopyWith<T, $Res> {
  factory $InvalidPhotoUrlCopyWith(
          InvalidPhotoUrl<T> value, $Res Function(InvalidPhotoUrl<T>) then) =
      _$InvalidPhotoUrlCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidPhotoUrlCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPhotoUrlCopyWith<T, $Res> {
  _$InvalidPhotoUrlCopyWithImpl(
      InvalidPhotoUrl<T> _value, $Res Function(InvalidPhotoUrl<T>) _then)
      : super(_value, (v) => _then(v as InvalidPhotoUrl<T>));

  @override
  InvalidPhotoUrl<T> get _value => super._value as InvalidPhotoUrl<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidPhotoUrl<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidPhotoUrl<T> implements InvalidPhotoUrl<T> {
  const _$InvalidPhotoUrl({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPhotoUrl(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPhotoUrl<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidPhotoUrlCopyWith<T, InvalidPhotoUrl<T>> get copyWith =>
      _$InvalidPhotoUrlCopyWithImpl<T, InvalidPhotoUrl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result notUnique(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result negativeNumber(T failedValue),
    @required Result incorrectFilePath(String filePath),
    @required Result negativeNumberOrZero(T failedValue),
    @required Result numberCannotBeParsed(String failedValue),
    @required Result numberOutOfRange(T failedValue, num min, num max),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return invalidPhotoUrl(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result notUnique(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidPhotoUrl(T failedValue),
    Result negativeNumber(T failedValue),
    Result incorrectFilePath(String filePath),
    Result negativeNumberOrZero(T failedValue),
    Result numberCannotBeParsed(String failedValue),
    Result numberOutOfRange(T failedValue, num min, num max),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhotoUrl != null) {
      return invalidPhotoUrl(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result notUnique(NotUnique<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result negativeNumber(NegativeNumber<T> value),
    @required Result incorrectFilePath(IncorrectFilePath<T> value),
    @required Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    @required Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    @required Result numberOutOfRange(NumberOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return invalidPhotoUrl(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result notUnique(NotUnique<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result negativeNumber(NegativeNumber<T> value),
    Result incorrectFilePath(IncorrectFilePath<T> value),
    Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    Result numberOutOfRange(NumberOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhotoUrl != null) {
      return invalidPhotoUrl(this);
    }
    return orElse();
  }
}

abstract class InvalidPhotoUrl<T> implements ValueFailure<T> {
  const factory InvalidPhotoUrl({@required T failedValue}) =
      _$InvalidPhotoUrl<T>;

  T get failedValue;
  $InvalidPhotoUrlCopyWith<T, InvalidPhotoUrl<T>> get copyWith;
}

/// @nodoc
abstract class $NegativeNumberCopyWith<T, $Res> {
  factory $NegativeNumberCopyWith(
          NegativeNumber<T> value, $Res Function(NegativeNumber<T>) then) =
      _$NegativeNumberCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$NegativeNumberCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NegativeNumberCopyWith<T, $Res> {
  _$NegativeNumberCopyWithImpl(
      NegativeNumber<T> _value, $Res Function(NegativeNumber<T>) _then)
      : super(_value, (v) => _then(v as NegativeNumber<T>));

  @override
  NegativeNumber<T> get _value => super._value as NegativeNumber<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(NegativeNumber<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$NegativeNumber<T> implements NegativeNumber<T> {
  const _$NegativeNumber({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.negativeNumber(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NegativeNumber<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $NegativeNumberCopyWith<T, NegativeNumber<T>> get copyWith =>
      _$NegativeNumberCopyWithImpl<T, NegativeNumber<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result notUnique(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result negativeNumber(T failedValue),
    @required Result incorrectFilePath(String filePath),
    @required Result negativeNumberOrZero(T failedValue),
    @required Result numberCannotBeParsed(String failedValue),
    @required Result numberOutOfRange(T failedValue, num min, num max),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return negativeNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result notUnique(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidPhotoUrl(T failedValue),
    Result negativeNumber(T failedValue),
    Result incorrectFilePath(String filePath),
    Result negativeNumberOrZero(T failedValue),
    Result numberCannotBeParsed(String failedValue),
    Result numberOutOfRange(T failedValue, num min, num max),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (negativeNumber != null) {
      return negativeNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result notUnique(NotUnique<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result negativeNumber(NegativeNumber<T> value),
    @required Result incorrectFilePath(IncorrectFilePath<T> value),
    @required Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    @required Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    @required Result numberOutOfRange(NumberOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return negativeNumber(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result notUnique(NotUnique<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result negativeNumber(NegativeNumber<T> value),
    Result incorrectFilePath(IncorrectFilePath<T> value),
    Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    Result numberOutOfRange(NumberOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (negativeNumber != null) {
      return negativeNumber(this);
    }
    return orElse();
  }
}

abstract class NegativeNumber<T> implements ValueFailure<T> {
  const factory NegativeNumber({@required T failedValue}) = _$NegativeNumber<T>;

  T get failedValue;
  $NegativeNumberCopyWith<T, NegativeNumber<T>> get copyWith;
}

/// @nodoc
abstract class $IncorrectFilePathCopyWith<T, $Res> {
  factory $IncorrectFilePathCopyWith(IncorrectFilePath<T> value,
          $Res Function(IncorrectFilePath<T>) then) =
      _$IncorrectFilePathCopyWithImpl<T, $Res>;
  $Res call({String filePath});
}

/// @nodoc
class _$IncorrectFilePathCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $IncorrectFilePathCopyWith<T, $Res> {
  _$IncorrectFilePathCopyWithImpl(
      IncorrectFilePath<T> _value, $Res Function(IncorrectFilePath<T>) _then)
      : super(_value, (v) => _then(v as IncorrectFilePath<T>));

  @override
  IncorrectFilePath<T> get _value => super._value as IncorrectFilePath<T>;

  @override
  $Res call({
    Object filePath = freezed,
  }) {
    return _then(IncorrectFilePath<T>(
      filePath: filePath == freezed ? _value.filePath : filePath as String,
    ));
  }
}

/// @nodoc
class _$IncorrectFilePath<T> implements IncorrectFilePath<T> {
  const _$IncorrectFilePath({@required this.filePath})
      : assert(filePath != null);

  @override
  final String filePath;

  @override
  String toString() {
    return 'ValueFailure<$T>.incorrectFilePath(filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IncorrectFilePath<T> &&
            (identical(other.filePath, filePath) ||
                const DeepCollectionEquality()
                    .equals(other.filePath, filePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filePath);

  @override
  $IncorrectFilePathCopyWith<T, IncorrectFilePath<T>> get copyWith =>
      _$IncorrectFilePathCopyWithImpl<T, IncorrectFilePath<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result notUnique(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result negativeNumber(T failedValue),
    @required Result incorrectFilePath(String filePath),
    @required Result negativeNumberOrZero(T failedValue),
    @required Result numberCannotBeParsed(String failedValue),
    @required Result numberOutOfRange(T failedValue, num min, num max),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return incorrectFilePath(filePath);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result notUnique(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidPhotoUrl(T failedValue),
    Result negativeNumber(T failedValue),
    Result incorrectFilePath(String filePath),
    Result negativeNumberOrZero(T failedValue),
    Result numberCannotBeParsed(String failedValue),
    Result numberOutOfRange(T failedValue, num min, num max),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (incorrectFilePath != null) {
      return incorrectFilePath(filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result notUnique(NotUnique<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result negativeNumber(NegativeNumber<T> value),
    @required Result incorrectFilePath(IncorrectFilePath<T> value),
    @required Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    @required Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    @required Result numberOutOfRange(NumberOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return incorrectFilePath(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result notUnique(NotUnique<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result negativeNumber(NegativeNumber<T> value),
    Result incorrectFilePath(IncorrectFilePath<T> value),
    Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    Result numberOutOfRange(NumberOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (incorrectFilePath != null) {
      return incorrectFilePath(this);
    }
    return orElse();
  }
}

abstract class IncorrectFilePath<T> implements ValueFailure<T> {
  const factory IncorrectFilePath({@required String filePath}) =
      _$IncorrectFilePath<T>;

  String get filePath;
  $IncorrectFilePathCopyWith<T, IncorrectFilePath<T>> get copyWith;
}

/// @nodoc
abstract class $NegativeNumberOrZeroCopyWith<T, $Res> {
  factory $NegativeNumberOrZeroCopyWith(NegativeNumberOrZero<T> value,
          $Res Function(NegativeNumberOrZero<T>) then) =
      _$NegativeNumberOrZeroCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$NegativeNumberOrZeroCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NegativeNumberOrZeroCopyWith<T, $Res> {
  _$NegativeNumberOrZeroCopyWithImpl(NegativeNumberOrZero<T> _value,
      $Res Function(NegativeNumberOrZero<T>) _then)
      : super(_value, (v) => _then(v as NegativeNumberOrZero<T>));

  @override
  NegativeNumberOrZero<T> get _value => super._value as NegativeNumberOrZero<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(NegativeNumberOrZero<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$NegativeNumberOrZero<T> implements NegativeNumberOrZero<T> {
  const _$NegativeNumberOrZero({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.negativeNumberOrZero(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NegativeNumberOrZero<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $NegativeNumberOrZeroCopyWith<T, NegativeNumberOrZero<T>> get copyWith =>
      _$NegativeNumberOrZeroCopyWithImpl<T, NegativeNumberOrZero<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result notUnique(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result negativeNumber(T failedValue),
    @required Result incorrectFilePath(String filePath),
    @required Result negativeNumberOrZero(T failedValue),
    @required Result numberCannotBeParsed(String failedValue),
    @required Result numberOutOfRange(T failedValue, num min, num max),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return negativeNumberOrZero(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result notUnique(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidPhotoUrl(T failedValue),
    Result negativeNumber(T failedValue),
    Result incorrectFilePath(String filePath),
    Result negativeNumberOrZero(T failedValue),
    Result numberCannotBeParsed(String failedValue),
    Result numberOutOfRange(T failedValue, num min, num max),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (negativeNumberOrZero != null) {
      return negativeNumberOrZero(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result notUnique(NotUnique<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result negativeNumber(NegativeNumber<T> value),
    @required Result incorrectFilePath(IncorrectFilePath<T> value),
    @required Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    @required Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    @required Result numberOutOfRange(NumberOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return negativeNumberOrZero(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result notUnique(NotUnique<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result negativeNumber(NegativeNumber<T> value),
    Result incorrectFilePath(IncorrectFilePath<T> value),
    Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    Result numberOutOfRange(NumberOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (negativeNumberOrZero != null) {
      return negativeNumberOrZero(this);
    }
    return orElse();
  }
}

abstract class NegativeNumberOrZero<T> implements ValueFailure<T> {
  const factory NegativeNumberOrZero({@required T failedValue}) =
      _$NegativeNumberOrZero<T>;

  T get failedValue;
  $NegativeNumberOrZeroCopyWith<T, NegativeNumberOrZero<T>> get copyWith;
}

/// @nodoc
abstract class $NumberCannotBeParsedCopyWith<T, $Res> {
  factory $NumberCannotBeParsedCopyWith(NumberCannotBeParsed<T> value,
          $Res Function(NumberCannotBeParsed<T>) then) =
      _$NumberCannotBeParsedCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$NumberCannotBeParsedCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NumberCannotBeParsedCopyWith<T, $Res> {
  _$NumberCannotBeParsedCopyWithImpl(NumberCannotBeParsed<T> _value,
      $Res Function(NumberCannotBeParsed<T>) _then)
      : super(_value, (v) => _then(v as NumberCannotBeParsed<T>));

  @override
  NumberCannotBeParsed<T> get _value => super._value as NumberCannotBeParsed<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(NumberCannotBeParsed<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$NumberCannotBeParsed<T> implements NumberCannotBeParsed<T> {
  const _$NumberCannotBeParsed({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.numberCannotBeParsed(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NumberCannotBeParsed<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $NumberCannotBeParsedCopyWith<T, NumberCannotBeParsed<T>> get copyWith =>
      _$NumberCannotBeParsedCopyWithImpl<T, NumberCannotBeParsed<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result notUnique(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result negativeNumber(T failedValue),
    @required Result incorrectFilePath(String filePath),
    @required Result negativeNumberOrZero(T failedValue),
    @required Result numberCannotBeParsed(String failedValue),
    @required Result numberOutOfRange(T failedValue, num min, num max),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return numberCannotBeParsed(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result notUnique(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidPhotoUrl(T failedValue),
    Result negativeNumber(T failedValue),
    Result incorrectFilePath(String filePath),
    Result negativeNumberOrZero(T failedValue),
    Result numberCannotBeParsed(String failedValue),
    Result numberOutOfRange(T failedValue, num min, num max),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (numberCannotBeParsed != null) {
      return numberCannotBeParsed(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result notUnique(NotUnique<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result negativeNumber(NegativeNumber<T> value),
    @required Result incorrectFilePath(IncorrectFilePath<T> value),
    @required Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    @required Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    @required Result numberOutOfRange(NumberOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return numberCannotBeParsed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result notUnique(NotUnique<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result negativeNumber(NegativeNumber<T> value),
    Result incorrectFilePath(IncorrectFilePath<T> value),
    Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    Result numberOutOfRange(NumberOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (numberCannotBeParsed != null) {
      return numberCannotBeParsed(this);
    }
    return orElse();
  }
}

abstract class NumberCannotBeParsed<T> implements ValueFailure<T> {
  const factory NumberCannotBeParsed({@required String failedValue}) =
      _$NumberCannotBeParsed<T>;

  String get failedValue;
  $NumberCannotBeParsedCopyWith<T, NumberCannotBeParsed<T>> get copyWith;
}

/// @nodoc
abstract class $NumberOutOfRangeCopyWith<T, $Res> {
  factory $NumberOutOfRangeCopyWith(
          NumberOutOfRange<T> value, $Res Function(NumberOutOfRange<T>) then) =
      _$NumberOutOfRangeCopyWithImpl<T, $Res>;
  $Res call({T failedValue, num min, num max});
}

/// @nodoc
class _$NumberOutOfRangeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NumberOutOfRangeCopyWith<T, $Res> {
  _$NumberOutOfRangeCopyWithImpl(
      NumberOutOfRange<T> _value, $Res Function(NumberOutOfRange<T>) _then)
      : super(_value, (v) => _then(v as NumberOutOfRange<T>));

  @override
  NumberOutOfRange<T> get _value => super._value as NumberOutOfRange<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object min = freezed,
    Object max = freezed,
  }) {
    return _then(NumberOutOfRange<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      min: min == freezed ? _value.min : min as num,
      max: max == freezed ? _value.max : max as num,
    ));
  }
}

/// @nodoc
class _$NumberOutOfRange<T> implements NumberOutOfRange<T> {
  const _$NumberOutOfRange(
      {@required this.failedValue, @required this.min, @required this.max})
      : assert(failedValue != null),
        assert(min != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final num min;
  @override
  final num max;

  @override
  String toString() {
    return 'ValueFailure<$T>.numberOutOfRange(failedValue: $failedValue, min: $min, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NumberOutOfRange<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.min, min) ||
                const DeepCollectionEquality().equals(other.min, min)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(min) ^
      const DeepCollectionEquality().hash(max);

  @override
  $NumberOutOfRangeCopyWith<T, NumberOutOfRange<T>> get copyWith =>
      _$NumberOutOfRangeCopyWithImpl<T, NumberOutOfRange<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result notUnique(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidPhotoUrl(T failedValue),
    @required Result negativeNumber(T failedValue),
    @required Result incorrectFilePath(String filePath),
    @required Result negativeNumberOrZero(T failedValue),
    @required Result numberCannotBeParsed(String failedValue),
    @required Result numberOutOfRange(T failedValue, num min, num max),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return numberOutOfRange(failedValue, min, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result notUnique(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidPhotoUrl(T failedValue),
    Result negativeNumber(T failedValue),
    Result incorrectFilePath(String filePath),
    Result negativeNumberOrZero(T failedValue),
    Result numberCannotBeParsed(String failedValue),
    Result numberOutOfRange(T failedValue, num min, num max),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (numberOutOfRange != null) {
      return numberOutOfRange(failedValue, min, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result notUnique(NotUnique<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result negativeNumber(NegativeNumber<T> value),
    @required Result incorrectFilePath(IncorrectFilePath<T> value),
    @required Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    @required Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    @required Result numberOutOfRange(NumberOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(notUnique != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidPhotoUrl != null);
    assert(negativeNumber != null);
    assert(incorrectFilePath != null);
    assert(negativeNumberOrZero != null);
    assert(numberCannotBeParsed != null);
    assert(numberOutOfRange != null);
    return numberOutOfRange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result notUnique(NotUnique<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result negativeNumber(NegativeNumber<T> value),
    Result incorrectFilePath(IncorrectFilePath<T> value),
    Result negativeNumberOrZero(NegativeNumberOrZero<T> value),
    Result numberCannotBeParsed(NumberCannotBeParsed<T> value),
    Result numberOutOfRange(NumberOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (numberOutOfRange != null) {
      return numberOutOfRange(this);
    }
    return orElse();
  }
}

abstract class NumberOutOfRange<T> implements ValueFailure<T> {
  const factory NumberOutOfRange(
      {@required T failedValue,
      @required num min,
      @required num max}) = _$NumberOutOfRange<T>;

  T get failedValue;
  num get min;
  num get max;
  $NumberOutOfRangeCopyWith<T, NumberOutOfRange<T>> get copyWith;
}
