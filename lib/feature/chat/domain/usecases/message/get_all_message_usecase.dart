import '../../../../../core/index.dart';
import '../../model/message/message.dart';
import '../../repository/message_repository.dart';

final class GetAllMessageUseCase extends BaseGetAllUseCase<Message> {
  const GetAllMessageUseCase(MessageRepository super._repository);
}
