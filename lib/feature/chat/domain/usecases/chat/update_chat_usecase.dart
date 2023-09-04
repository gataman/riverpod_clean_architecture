import '../../../../../core/index.dart';
import '../../model/chat/chat.dart';
import '../../repository/chat_repository.dart';

final class UpdateChatUseCase extends BaseUpdateUseCase<Chat> {
  const UpdateChatUseCase(ChatRepository super._repository);
}
