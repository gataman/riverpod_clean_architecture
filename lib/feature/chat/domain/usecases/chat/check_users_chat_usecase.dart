import '../../../../../core/index.dart';
import '../../model/chat/chat_with_users.dart';
import '../../repository/chat_repository.dart';

final class CheckUsersChatUseCase {
  CheckUsersChatUseCase(this._repository);

  final ChatRepository _repository;

  Future<DataState<ChatWithUsers?>> call({
    required int user1,
    required int user2,
  }) =>
      _repository.checkUsersChat(user1, user2);
}
