// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) error,
    required TResult Function() loading,
    required TResult Function(ChatWithUsers chatId) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? error,
    TResult? Function()? loading,
    TResult? Function(ChatWithUsers chatId)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function()? loading,
    TResult Function(ChatWithUsers chatId)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatViewErrorState value) error,
    required TResult Function(_ChatViewLoadingState value) loading,
    required TResult Function(_ChatViewLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatViewErrorState value)? error,
    TResult? Function(_ChatViewLoadingState value)? loading,
    TResult? Function(_ChatViewLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatViewErrorState value)? error,
    TResult Function(_ChatViewLoadingState value)? loading,
    TResult Function(_ChatViewLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatViewStateCopyWith<$Res> {
  factory $ChatViewStateCopyWith(
          ChatViewState value, $Res Function(ChatViewState) then) =
      _$ChatViewStateCopyWithImpl<$Res, ChatViewState>;
}

/// @nodoc
class _$ChatViewStateCopyWithImpl<$Res, $Val extends ChatViewState>
    implements $ChatViewStateCopyWith<$Res> {
  _$ChatViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChatViewErrorStateCopyWith<$Res> {
  factory _$$_ChatViewErrorStateCopyWith(_$_ChatViewErrorState value,
          $Res Function(_$_ChatViewErrorState) then) =
      __$$_ChatViewErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_ChatViewErrorStateCopyWithImpl<$Res>
    extends _$ChatViewStateCopyWithImpl<$Res, _$_ChatViewErrorState>
    implements _$$_ChatViewErrorStateCopyWith<$Res> {
  __$$_ChatViewErrorStateCopyWithImpl(
      _$_ChatViewErrorState _value, $Res Function(_$_ChatViewErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_ChatViewErrorState(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChatViewErrorState implements _ChatViewErrorState {
  _$_ChatViewErrorState({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ChatViewState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatViewErrorState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatViewErrorStateCopyWith<_$_ChatViewErrorState> get copyWith =>
      __$$_ChatViewErrorStateCopyWithImpl<_$_ChatViewErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) error,
    required TResult Function() loading,
    required TResult Function(ChatWithUsers chatId) loaded,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? error,
    TResult? Function()? loading,
    TResult? Function(ChatWithUsers chatId)? loaded,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function()? loading,
    TResult Function(ChatWithUsers chatId)? loaded,
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
    required TResult Function(_ChatViewErrorState value) error,
    required TResult Function(_ChatViewLoadingState value) loading,
    required TResult Function(_ChatViewLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatViewErrorState value)? error,
    TResult? Function(_ChatViewLoadingState value)? loading,
    TResult? Function(_ChatViewLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatViewErrorState value)? error,
    TResult Function(_ChatViewLoadingState value)? loading,
    TResult Function(_ChatViewLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ChatViewErrorState implements ChatViewState {
  factory _ChatViewErrorState({required final String errorMessage}) =
      _$_ChatViewErrorState;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_ChatViewErrorStateCopyWith<_$_ChatViewErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChatViewLoadingStateCopyWith<$Res> {
  factory _$$_ChatViewLoadingStateCopyWith(_$_ChatViewLoadingState value,
          $Res Function(_$_ChatViewLoadingState) then) =
      __$$_ChatViewLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChatViewLoadingStateCopyWithImpl<$Res>
    extends _$ChatViewStateCopyWithImpl<$Res, _$_ChatViewLoadingState>
    implements _$$_ChatViewLoadingStateCopyWith<$Res> {
  __$$_ChatViewLoadingStateCopyWithImpl(_$_ChatViewLoadingState _value,
      $Res Function(_$_ChatViewLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ChatViewLoadingState implements _ChatViewLoadingState {
  _$_ChatViewLoadingState();

  @override
  String toString() {
    return 'ChatViewState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ChatViewLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) error,
    required TResult Function() loading,
    required TResult Function(ChatWithUsers chatId) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? error,
    TResult? Function()? loading,
    TResult? Function(ChatWithUsers chatId)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function()? loading,
    TResult Function(ChatWithUsers chatId)? loaded,
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
    required TResult Function(_ChatViewErrorState value) error,
    required TResult Function(_ChatViewLoadingState value) loading,
    required TResult Function(_ChatViewLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatViewErrorState value)? error,
    TResult? Function(_ChatViewLoadingState value)? loading,
    TResult? Function(_ChatViewLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatViewErrorState value)? error,
    TResult Function(_ChatViewLoadingState value)? loading,
    TResult Function(_ChatViewLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ChatViewLoadingState implements ChatViewState {
  factory _ChatViewLoadingState() = _$_ChatViewLoadingState;
}

/// @nodoc
abstract class _$$_ChatViewLoadedStateCopyWith<$Res> {
  factory _$$_ChatViewLoadedStateCopyWith(_$_ChatViewLoadedState value,
          $Res Function(_$_ChatViewLoadedState) then) =
      __$$_ChatViewLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatWithUsers chatId});

  $ChatWithUsersCopyWith<$Res> get chatId;
}

/// @nodoc
class __$$_ChatViewLoadedStateCopyWithImpl<$Res>
    extends _$ChatViewStateCopyWithImpl<$Res, _$_ChatViewLoadedState>
    implements _$$_ChatViewLoadedStateCopyWith<$Res> {
  __$$_ChatViewLoadedStateCopyWithImpl(_$_ChatViewLoadedState _value,
      $Res Function(_$_ChatViewLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$_ChatViewLoadedState(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as ChatWithUsers,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatWithUsersCopyWith<$Res> get chatId {
    return $ChatWithUsersCopyWith<$Res>(_value.chatId, (value) {
      return _then(_value.copyWith(chatId: value));
    });
  }
}

/// @nodoc

class _$_ChatViewLoadedState implements _ChatViewLoadedState {
  _$_ChatViewLoadedState({required this.chatId});

  @override
  final ChatWithUsers chatId;

  @override
  String toString() {
    return 'ChatViewState.loaded(chatId: $chatId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatViewLoadedState &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatViewLoadedStateCopyWith<_$_ChatViewLoadedState> get copyWith =>
      __$$_ChatViewLoadedStateCopyWithImpl<_$_ChatViewLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) error,
    required TResult Function() loading,
    required TResult Function(ChatWithUsers chatId) loaded,
  }) {
    return loaded(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? error,
    TResult? Function()? loading,
    TResult? Function(ChatWithUsers chatId)? loaded,
  }) {
    return loaded?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function()? loading,
    TResult Function(ChatWithUsers chatId)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatViewErrorState value) error,
    required TResult Function(_ChatViewLoadingState value) loading,
    required TResult Function(_ChatViewLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatViewErrorState value)? error,
    TResult? Function(_ChatViewLoadingState value)? loading,
    TResult? Function(_ChatViewLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatViewErrorState value)? error,
    TResult Function(_ChatViewLoadingState value)? loading,
    TResult Function(_ChatViewLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ChatViewLoadedState implements ChatViewState {
  factory _ChatViewLoadedState({required final ChatWithUsers chatId}) =
      _$_ChatViewLoadedState;

  ChatWithUsers get chatId;
  @JsonKey(ignore: true)
  _$$_ChatViewLoadedStateCopyWith<_$_ChatViewLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
