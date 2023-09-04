import '../../../../../core/index.dart';
import '../../model/message/message.dart';
import '../../repository/message_repository.dart';

final class InsertMessageUseCase extends BaseInsertUseCase<Message> {
  const InsertMessageUseCase(MessageRepository super._repository);
}
