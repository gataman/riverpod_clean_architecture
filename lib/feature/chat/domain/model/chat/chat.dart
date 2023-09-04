import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/index.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
class Chat with _$Chat, BaseModel {
  factory Chat({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(name: 'created_at', includeIfNull: false) DateTime? createdAt,
    @JsonKey(includeIfNull: false) String? name,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}
