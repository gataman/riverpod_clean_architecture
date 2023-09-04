import '../../../../core/index.dart';
import '../model/chat/chat.dart';
import '../model/chat/chat_with_users.dart';

abstract class ChatRepository extends BaseRepository<Chat> {
  ChatRepository(super.service);

  Future<DataState<ChatWithUsers?>> checkUsersChat(int user1, int user2);
}
