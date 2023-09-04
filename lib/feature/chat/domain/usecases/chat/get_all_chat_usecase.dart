import '../../../../../core/index.dart';
import '../../model/chat/chat.dart';
import '../../repository/chat_repository.dart';

final class GetAllChatUseCase extends BaseGetAllUseCase<Chat> {
  const GetAllChatUseCase(ChatRepository super._repository);
}
