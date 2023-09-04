import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/index.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message, BaseModel {
  factory Message({
    @JsonKey(name: 'chat_id') required int chatId,
    @JsonKey(name: 'sender_id') required int senderId,
    @JsonKey(name: 'message') required String message,
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(name: 'created_at', includeIfNull: false) DateTime? createdAt,
    @JsonKey(includeToJson: false) bool? isTail,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
