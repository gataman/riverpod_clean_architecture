// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(DataException error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(DataException error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(DataException error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loaded<T> value) success,
    required TResult Function(_error<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loaded<T> value)? success,
    TResult? Function(_error<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loaded<T> value)? success,
    TResult Function(_error<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStateCopyWith<T, $Res> {
  factory $DataStateCopyWith(
          DataState<T> value, $Res Function(DataState<T>) then) =
      _$DataStateCopyWithImpl<T, $Res, DataState<T>>;
}

/// @nodoc
class _$DataStateCopyWithImpl<T, $Res, $Val extends DataState<T>>
    implements $DataStateCopyWith<T, $Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_loadedCopyWith<T, $Res> {
  factory _$$_loadedCopyWith(
          _$_loaded<T> value, $Res Function(_$_loaded<T>) then) =
      __$$_loadedCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$_loadedCopyWithImpl<T, $Res>
    extends _$DataStateCopyWithImpl<T, $Res, _$_loaded<T>>
    implements _$$_loadedCopyWith<T, $Res> {
  __$$_loadedCopyWithImpl(
      _$_loaded<T> _value, $Res Function(_$_loaded<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_loaded<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_loaded<T> implements _loaded<T> {
  _$_loaded(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'DataState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_loaded<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_loadedCopyWith<T, _$_loaded<T>> get copyWith =>
      __$$_loadedCopyWithImpl<T, _$_loaded<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(DataException error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(DataException error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(DataException error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loaded<T> value) success,
    required TResult Function(_error<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loaded<T> value)? success,
    TResult? Function(_error<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loaded<T> value)? success,
    TResult Function(_error<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _loaded<T> implements DataState<T> {
  factory _loaded(final T data) = _$_loaded<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$_loadedCopyWith<T, _$_loaded<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_errorCopyWith<T, $Res> {
  factory _$$_errorCopyWith(
          _$_error<T> value, $Res Function(_$_error<T>) then) =
      __$$_errorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({DataException error});

  $DataExceptionCopyWith<$Res> get error;
}

/// @nodoc
class __$$_errorCopyWithImpl<T, $Res>
    extends _$DataStateCopyWithImpl<T, $Res, _$_error<T>>
    implements _$$_errorCopyWith<T, $Res> {
  __$$_errorCopyWithImpl(_$_error<T> _value, $Res Function(_$_error<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_error<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DataException,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DataExceptionCopyWith<$Res> get error {
    return $DataExceptionCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_error<T> implements _error<T> {
  _$_error(this.error);

  @override
  final DataException error;

  @override
  String toString() {
    return 'DataState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_error<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_errorCopyWith<T, _$_error<T>> get copyWith =>
      __$$_errorCopyWithImpl<T, _$_error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(DataException error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(DataException error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(DataException error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loaded<T> value) success,
    required TResult Function(_error<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loaded<T> value)? success,
    TResult? Function(_error<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loaded<T> value)? success,
    TResult Function(_error<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error<T> implements DataState<T> {
  factory _error(final DataException error) = _$_error<T>;

  DataException get error;
  @JsonKey(ignore: true)
  _$$_errorCopyWith<T, _$_error<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
