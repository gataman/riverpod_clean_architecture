// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  @JsonKey(name: 'chat_id')
  int get chatId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender_id')
  int get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', includeIfNull: false)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  bool? get isTail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {@JsonKey(name: 'chat_id') int chatId,
      @JsonKey(name: 'sender_id') int senderId,
      @JsonKey(name: 'message') String message,
      @JsonKey(includeIfNull: false) int? id,
      @JsonKey(name: 'created_at', includeIfNull: false) DateTime? createdAt,
      @JsonKey(includeToJson: false) bool? isTail});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? senderId = null,
    Object? message = null,
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? isTail = freezed,
  }) {
    return _then(_value.copyWith(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isTail: freezed == isTail
          ? _value.isTail
          : isTail // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'chat_id') int chatId,
      @JsonKey(name: 'sender_id') int senderId,
      @JsonKey(name: 'message') String message,
      @JsonKey(includeIfNull: false) int? id,
      @JsonKey(name: 'created_at', includeIfNull: false) DateTime? createdAt,
      @JsonKey(includeToJson: false) bool? isTail});
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$_Message>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? senderId = null,
    Object? message = null,
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? isTail = freezed,
  }) {
    return _then(_$_Message(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isTail: freezed == isTail
          ? _value.isTail
          : isTail // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Message implements _Message {
  _$_Message(
      {@JsonKey(name: 'chat_id') required this.chatId,
      @JsonKey(name: 'sender_id') required this.senderId,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(includeIfNull: false) this.id,
      @JsonKey(name: 'created_at', includeIfNull: false) this.createdAt,
      @JsonKey(includeToJson: false) this.isTail});

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  @JsonKey(name: 'chat_id')
  final int chatId;
  @override
  @JsonKey(name: 'sender_id')
  final int senderId;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(includeIfNull: false)
  final int? id;
  @override
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime? createdAt;
  @override
  @JsonKey(includeToJson: false)
  final bool? isTail;

  @override
  String toString() {
    return 'Message(chatId: $chatId, senderId: $senderId, message: $message, id: $id, createdAt: $createdAt, isTail: $isTail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isTail, isTail) || other.isTail == isTail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, chatId, senderId, message, id, createdAt, isTail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  factory _Message(
      {@JsonKey(name: 'chat_id') required final int chatId,
      @JsonKey(name: 'sender_id') required final int senderId,
      @JsonKey(name: 'message') required final String message,
      @JsonKey(includeIfNull: false) final int? id,
      @JsonKey(name: 'created_at', includeIfNull: false)
      final DateTime? createdAt,
      @JsonKey(includeToJson: false) final bool? isTail}) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  @JsonKey(name: 'chat_id')
  int get chatId;
  @override
  @JsonKey(name: 'sender_id')
  int get senderId;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(includeIfNull: false)
  int? get id;
  @override
  @JsonKey(name: 'created_at', includeIfNull: false)
  DateTime? get createdAt;
  @override
  @JsonKey(includeToJson: false)
  bool? get isTail;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}
