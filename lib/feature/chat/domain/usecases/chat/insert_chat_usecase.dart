import '../../../../../core/index.dart';
import '../../model/chat/chat.dart';
import '../../repository/chat_repository.dart';

final class InsertChatUseCase extends BaseInsertUseCase<Chat> {
  const InsertChatUseCase(ChatRepository super._repository);
}
