// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_with_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatWithUsers _$$_ChatWithUsersFromJson(Map<String, dynamic> json) =>
    _$_ChatWithUsers(
      chatId: json['chatId'] as int,
      chatName: json['chatName'] as String?,
      user1: json['user1'] == null
          ? null
          : UserModel.fromJson(json['user1'] as Map<String, dynamic>),
      user2: json['user2'] == null
          ? null
          : UserModel.fromJson(json['user2'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChatWithUsersToJson(_$_ChatWithUsers instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'chatName': instance.chatName,
      'user1': instance.user1,
      'user2': instance.user2,
    };
