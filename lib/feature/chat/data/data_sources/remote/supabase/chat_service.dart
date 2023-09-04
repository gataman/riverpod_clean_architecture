import '../../../../../../core/index.dart';
import '../../../../domain/model/chat/chat.dart';
import '../../../../domain/model/chat/chat_with_users.dart';

class ChatService extends BaseSupabaseService<Chat> {
  @override
  String get tableName => 'chats';

  @override
  Chat fromJson(Map<String, dynamic> json) => Chat.fromJson(json);

  @override
  Map<String, dynamic> toJson(Chat data) => data.toJson();

  Future<DataState<ChatWithUsers?>> checkUsersChat(int user1, int user2) async {
    try {
      final response = await supabaseClient
          .from('chats')
          .select<Map<String, dynamic>>(
            'chatId:id,chatName:name, '
            'user1:users!chats_user1_fkey(id,name,surname,photo_url), '
            'user2:users!chats_user2_fkey(id,name,surname,photo_url)',
          )
          .or(
            'and(user1.eq.$user1, user2.eq.$user2), '
            'and(user1.eq.$user2, user2.eq.$user1)',
          )
          .single()
          .withConverter(ChatWithUsers.fromJson);

      return DataState<ChatWithUsers?>.success(response);
    } catch (e) {
      return DataState<ChatWithUsers?>.error(
        DataException(
          message: e.toString(),
        ),
      );
    }
  }
}
