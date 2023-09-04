import '../../../../../core/index.dart';
import '../../model/message/message.dart';
import '../../repository/message_repository.dart';

final class GetByIdMessageUseCase extends BaseGetByIdUseCase<Message> {
  const GetByIdMessageUseCase(MessageRepository super._repository);
}
