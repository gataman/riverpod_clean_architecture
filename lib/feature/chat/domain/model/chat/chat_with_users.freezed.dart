// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_with_users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatWithUsers _$ChatWithUsersFromJson(Map<String, dynamic> json) {
  return _ChatWithUsers.fromJson(json);
}

/// @nodoc
mixin _$ChatWithUsers {
  int get chatId => throw _privateConstructorUsedError;
  String? get chatName => throw _privateConstructorUsedError;
  UserModel? get user1 => throw _privateConstructorUsedError;
  UserModel? get user2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatWithUsersCopyWith<ChatWithUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatWithUsersCopyWith<$Res> {
  factory $ChatWithUsersCopyWith(
          ChatWithUsers value, $Res Function(ChatWithUsers) then) =
      _$ChatWithUsersCopyWithImpl<$Res, ChatWithUsers>;
  @useResult
  $Res call({int chatId, String? chatName, UserModel? user1, UserModel? user2});

  $UserModelCopyWith<$Res>? get user1;
  $UserModelCopyWith<$Res>? get user2;
}

/// @nodoc
class _$ChatWithUsersCopyWithImpl<$Res, $Val extends ChatWithUsers>
    implements $ChatWithUsersCopyWith<$Res> {
  _$ChatWithUsersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? chatName = freezed,
    Object? user1 = freezed,
    Object? user2 = freezed,
  }) {
    return _then(_value.copyWith(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      chatName: freezed == chatName
          ? _value.chatName
          : chatName // ignore: cast_nullable_to_non_nullable
              as String?,
      user1: freezed == user1
          ? _value.user1
          : user1 // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      user2: freezed == user2
          ? _value.user2
          : user2 // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user1 {
    if (_value.user1 == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user1!, (value) {
      return _then(_value.copyWith(user1: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user2 {
    if (_value.user2 == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user2!, (value) {
      return _then(_value.copyWith(user2: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatWithUsersCopyWith<$Res>
    implements $ChatWithUsersCopyWith<$Res> {
  factory _$$_ChatWithUsersCopyWith(
          _$_ChatWithUsers value, $Res Function(_$_ChatWithUsers) then) =
      __$$_ChatWithUsersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int chatId, String? chatName, UserModel? user1, UserModel? user2});

  @override
  $UserModelCopyWith<$Res>? get user1;
  @override
  $UserModelCopyWith<$Res>? get user2;
}

/// @nodoc
class __$$_ChatWithUsersCopyWithImpl<$Res>
    extends _$ChatWithUsersCopyWithImpl<$Res, _$_ChatWithUsers>
    implements _$$_ChatWithUsersCopyWith<$Res> {
  __$$_ChatWithUsersCopyWithImpl(
      _$_ChatWithUsers _value, $Res Function(_$_ChatWithUsers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? chatName = freezed,
    Object? user1 = freezed,
    Object? user2 = freezed,
  }) {
    return _then(_$_ChatWithUsers(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      chatName: freezed == chatName
          ? _value.chatName
          : chatName // ignore: cast_nullable_to_non_nullable
              as String?,
      user1: freezed == user1
          ? _value.user1
          : user1 // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      user2: freezed == user2
          ? _value.user2
          : user2 // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatWithUsers implements _ChatWithUsers {
  _$_ChatWithUsers(
      {required this.chatId, this.chatName, this.user1, this.user2});

  factory _$_ChatWithUsers.fromJson(Map<String, dynamic> json) =>
      _$$_ChatWithUsersFromJson(json);

  @override
  final int chatId;
  @override
  final String? chatName;
  @override
  final UserModel? user1;
  @override
  final UserModel? user2;

  @override
  String toString() {
    return 'ChatWithUsers(chatId: $chatId, chatName: $chatName, user1: $user1, user2: $user2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatWithUsers &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.chatName, chatName) ||
                other.chatName == chatName) &&
            (identical(other.user1, user1) || other.user1 == user1) &&
            (identical(other.user2, user2) || other.user2 == user2));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chatId, chatName, user1, user2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatWithUsersCopyWith<_$_ChatWithUsers> get copyWith =>
      __$$_ChatWithUsersCopyWithImpl<_$_ChatWithUsers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatWithUsersToJson(
      this,
    );
  }
}

abstract class _ChatWithUsers implements ChatWithUsers {
  factory _ChatWithUsers(
      {required final int chatId,
      final String? chatName,
      final UserModel? user1,
      final UserModel? user2}) = _$_ChatWithUsers;

  factory _ChatWithUsers.fromJson(Map<String, dynamic> json) =
      _$_ChatWithUsers.fromJson;

  @override
  int get chatId;
  @override
  String? get chatName;
  @override
  UserModel? get user1;
  @override
  UserModel? get user2;
  @override
  @JsonKey(ignore: true)
  _$$_ChatWithUsersCopyWith<_$_ChatWithUsers> get copyWith =>
      throw _privateConstructorUsedError;
}
