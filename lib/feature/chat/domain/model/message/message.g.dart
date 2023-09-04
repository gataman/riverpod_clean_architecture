// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      chatId: json['chat_id'] as int,
      senderId: json['sender_id'] as int,
      message: json['message'] as String,
      id: json['id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      isTail: json['isTail'] as bool?,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) {
  final val = <String, dynamic>{
    'chat_id': instance.chatId,
    'sender_id': instance.senderId,
    'message': instance.message,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  return val;
}
