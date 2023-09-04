import '../../../../../core/index.dart';
import '../../model/chat/chat.dart';
import '../../repository/chat_repository.dart';

final class GetByIdChatUseCase extends BaseGetByIdUseCase<Chat> {
  const GetByIdChatUseCase(ChatRepository super._repository);
}
