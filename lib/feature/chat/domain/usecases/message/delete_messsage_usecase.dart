import '../../../../../core/index.dart';
import '../../model/message/message.dart';
import '../../repository/message_repository.dart';

final class DeleteMessageUseCase extends BaseDeleteUseCase<Message> {
  const DeleteMessageUseCase(MessageRepository super._repository);
}
