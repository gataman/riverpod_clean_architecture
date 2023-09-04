import '../../../../../core/index.dart';
import '../../model/chat/chat.dart';
import '../../repository/chat_repository.dart';

final class DeleteChatUseCase extends BaseDeleteUseCase<Chat> {
  const DeleteChatUseCase(ChatRepository super._repository);
}
