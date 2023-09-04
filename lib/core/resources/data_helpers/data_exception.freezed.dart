// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataException {
  String get message => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataExceptionCopyWith<DataException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataExceptionCopyWith<$Res> {
  factory $DataExceptionCopyWith(
          DataException value, $Res Function(DataException) then) =
      _$DataExceptionCopyWithImpl<$Res, DataException>;
  @useResult
  $Res call({String message, String? code});
}

/// @nodoc
class _$DataExceptionCopyWithImpl<$Res, $Val extends DataException>
    implements $DataExceptionCopyWith<$Res> {
  _$DataExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataExceptionCopyWith<$Res>
    implements $DataExceptionCopyWith<$Res> {
  factory _$$_DataExceptionCopyWith(
          _$_DataException value, $Res Function(_$_DataException) then) =
      __$$_DataExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? code});
}

/// @nodoc
class __$$_DataExceptionCopyWithImpl<$Res>
    extends _$DataExceptionCopyWithImpl<$Res, _$_DataException>
    implements _$$_DataExceptionCopyWith<$Res> {
  __$$_DataExceptionCopyWithImpl(
      _$_DataException _value, $Res Function(_$_DataException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = freezed,
  }) {
    return _then(_$_DataException(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DataException implements _DataException {
  _$_DataException({required this.message, this.code = '600'});

  @override
  final String message;
  @override
  @JsonKey()
  final String? code;

  @override
  String toString() {
    return 'DataException(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataExceptionCopyWith<_$_DataException> get copyWith =>
      __$$_DataExceptionCopyWithImpl<_$_DataException>(this, _$identity);
}

abstract class _DataException implements DataException {
  factory _DataException({required final String message, final String? code}) =
      _$_DataException;

  @override
  String get message;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$_DataExceptionCopyWith<_$_DataException> get copyWith =>
      throw _privateConstructorUsedError;
}
