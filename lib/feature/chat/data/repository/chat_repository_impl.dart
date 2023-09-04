import '../../../../core/resources/data_helpers/data_state.dart';
import '../../domain/model/chat/chat_with_users.dart';
import '../../domain/repository/chat_repository.dart';
import '../remote/supabase/chat_service.dart';

class ChatRepositoryImpl extends ChatRepository {
  ChatRepositoryImpl(this._service) : super(_service);
  final ChatService _service;

  @override
  Future<DataState<ChatWithUsers?>> checkUsersChat(int user1, int user2) =>
      _service.checkUsersChat(user1, user2);
}
