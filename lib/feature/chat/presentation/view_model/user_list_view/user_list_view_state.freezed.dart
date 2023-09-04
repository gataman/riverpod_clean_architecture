// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserListViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) error,
    required TResult Function() loading,
    required TResult Function(List<UserModel> chatWithUserList) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? error,
    TResult? Function()? loading,
    TResult? Function(List<UserModel> chatWithUserList)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function()? loading,
    TResult Function(List<UserModel> chatWithUserList)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserListViewErrorState value) error,
    required TResult Function(_UserListViewLoadingState value) loading,
    required TResult Function(_UserListViewLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserListViewErrorState value)? error,
    TResult? Function(_UserListViewLoadingState value)? loading,
    TResult? Function(_UserListViewLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserListViewErrorState value)? error,
    TResult Function(_UserListViewLoadingState value)? loading,
    TResult Function(_UserListViewLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListViewStateCopyWith<$Res> {
  factory $UserListViewStateCopyWith(
          UserListViewState value, $Res Function(UserListViewState) then) =
      _$UserListViewStateCopyWithImpl<$Res, UserListViewState>;
}

/// @nodoc
class _$UserListViewStateCopyWithImpl<$Res, $Val extends UserListViewState>
    implements $UserListViewStateCopyWith<$Res> {
  _$UserListViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserListViewErrorStateCopyWith<$Res> {
  factory _$$_UserListViewErrorStateCopyWith(_$_UserListViewErrorState value,
          $Res Function(_$_UserListViewErrorState) then) =
      __$$_UserListViewErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_UserListViewErrorStateCopyWithImpl<$Res>
    extends _$UserListViewStateCopyWithImpl<$Res, _$_UserListViewErrorState>
    implements _$$_UserListViewErrorStateCopyWith<$Res> {
  __$$_UserListViewErrorStateCopyWithImpl(_$_UserListViewErrorState _value,
      $Res Function(_$_UserListViewErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_UserListViewErrorState(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserListViewErrorState implements _UserListViewErrorState {
  _$_UserListViewErrorState({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'UserListViewState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserListViewErrorState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserListViewErrorStateCopyWith<_$_UserListViewErrorState> get copyWith =>
      __$$_UserListViewErrorStateCopyWithImpl<_$_UserListViewErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) error,
    required TResult Function() loading,
    required TResult Function(List<UserModel> chatWithUserList) loaded,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? error,
    TResult? Function()? loading,
    TResult? Function(List<UserModel> chatWithUserList)? loaded,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function()? loading,
    TResult Function(List<UserModel> chatWithUserList)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserListViewErrorState value) error,
    required TResult Function(_UserListViewLoadingState value) loading,
    required TResult Function(_UserListViewLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserListViewErrorState value)? error,
    TResult? Function(_UserListViewLoadingState value)? loading,
    TResult? Function(_UserListViewLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserListViewErrorState value)? error,
    TResult Function(_UserListViewLoadingState value)? loading,
    TResult Function(_UserListViewLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _UserListViewErrorState implements UserListViewState {
  factory _UserListViewErrorState({required final String errorMessage}) =
      _$_UserListViewErrorState;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_UserListViewErrorStateCopyWith<_$_UserListViewErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserListViewLoadingStateCopyWith<$Res> {
  factory _$$_UserListViewLoadingStateCopyWith(
          _$_UserListViewLoadingState value,
          $Res Function(_$_UserListViewLoadingState) then) =
      __$$_UserListViewLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserListViewLoadingStateCopyWithImpl<$Res>
    extends _$UserListViewStateCopyWithImpl<$Res, _$_UserListViewLoadingState>
    implements _$$_UserListViewLoadingStateCopyWith<$Res> {
  __$$_UserListViewLoadingStateCopyWithImpl(_$_UserListViewLoadingState _value,
      $Res Function(_$_UserListViewLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserListViewLoadingState implements _UserListViewLoadingState {
  _$_UserListViewLoadingState();

  @override
  String toString() {
    return 'UserListViewState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserListViewLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) error,
    required TResult Function() loading,
    required TResult Function(List<UserModel> chatWithUserList) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? error,
    TResult? Function()? loading,
    TResult? Function(List<UserModel> chatWithUserList)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function()? loading,
    TResult Function(List<UserModel> chatWithUserList)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserListViewErrorState value) error,
    required TResult Function(_UserListViewLoadingState value) loading,
    required TResult Function(_UserListViewLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserListViewErrorState value)? error,
    TResult? Function(_UserListViewLoadingState value)? loading,
    TResult? Function(_UserListViewLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserListViewErrorState value)? error,
    TResult Function(_UserListViewLoadingState value)? loading,
    TResult Function(_UserListViewLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _UserListViewLoadingState implements UserListViewState {
  factory _UserListViewLoadingState() = _$_UserListViewLoadingState;
}

/// @nodoc
abstract class _$$_UserListViewLoadedStateCopyWith<$Res> {
  factory _$$_UserListViewLoadedStateCopyWith(_$_UserListViewLoadedState value,
          $Res Function(_$_UserListViewLoadedState) then) =
      __$$_UserListViewLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserModel> chatWithUserList});
}

/// @nodoc
class __$$_UserListViewLoadedStateCopyWithImpl<$Res>
    extends _$UserListViewStateCopyWithImpl<$Res, _$_UserListViewLoadedState>
    implements _$$_UserListViewLoadedStateCopyWith<$Res> {
  __$$_UserListViewLoadedStateCopyWithImpl(_$_UserListViewLoadedState _value,
      $Res Function(_$_UserListViewLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatWithUserList = null,
  }) {
    return _then(_$_UserListViewLoadedState(
      chatWithUserList: null == chatWithUserList
          ? _value._chatWithUserList
          : chatWithUserList // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc

class _$_UserListViewLoadedState implements _UserListViewLoadedState {
  _$_UserListViewLoadedState({required final List<UserModel> chatWithUserList})
      : _chatWithUserList = chatWithUserList;

  final List<UserModel> _chatWithUserList;
  @override
  List<UserModel> get chatWithUserList {
    if (_chatWithUserList is EqualUnmodifiableListView)
      return _chatWithUserList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatWithUserList);
  }

  @override
  String toString() {
    return 'UserListViewState.loaded(chatWithUserList: $chatWithUserList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserListViewLoadedState &&
            const DeepCollectionEquality()
                .equals(other._chatWithUserList, _chatWithUserList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_chatWithUserList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserListViewLoadedStateCopyWith<_$_UserListViewLoadedState>
      get copyWith =>
          __$$_UserListViewLoadedStateCopyWithImpl<_$_UserListViewLoadedState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) error,
    required TResult Function() loading,
    required TResult Function(List<UserModel> chatWithUserList) loaded,
  }) {
    return loaded(chatWithUserList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? error,
    TResult? Function()? loading,
    TResult? Function(List<UserModel> chatWithUserList)? loaded,
  }) {
    return loaded?.call(chatWithUserList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function()? loading,
    TResult Function(List<UserModel> chatWithUserList)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(chatWithUserList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserListViewErrorState value) error,
    required TResult Function(_UserListViewLoadingState value) loading,
    required TResult Function(_UserListViewLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserListViewErrorState value)? error,
    TResult? Function(_UserListViewLoadingState value)? loading,
    TResult? Function(_UserListViewLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserListViewErrorState value)? error,
    TResult Function(_UserListViewLoadingState value)? loading,
    TResult Function(_UserListViewLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _UserListViewLoadedState implements UserListViewState {
  factory _UserListViewLoadedState(
          {required final List<UserModel> chatWithUserList}) =
      _$_UserListViewLoadedState;

  List<UserModel> get chatWithUserList;
  @JsonKey(ignore: true)
  _$$_UserListViewLoadedStateCopyWith<_$_UserListViewLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}
