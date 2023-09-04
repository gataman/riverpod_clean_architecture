import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user_model.dart';

part 'chat_with_users.freezed.dart';
part 'chat_with_users.g.dart';

@freezed
class ChatWithUsers with _$ChatWithUsers {
  factory ChatWithUsers({
    required int chatId,
    String? chatName,
    UserModel? user1,
    UserModel? user2,
  }) = _ChatWithUsers;

  factory ChatWithUsers.fromJson(Map<String, dynamic> json) =>
      _$ChatWithUsersFromJson(json);
}
