import '../../../../../core/index.dart';
import '../../model/message/message.dart';
import '../../repository/message_repository.dart';

final class UpdateMessageUseCase extends BaseUpdateUseCase<Message> {
  const UpdateMessageUseCase(MessageRepository super._repository);
}
