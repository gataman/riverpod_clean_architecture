import 'package:riverpod_clean_architecture/feature/chat/domain/model/message/message.dart';

import '../../../../../core/index.dart';
import '../../repository/message_repository.dart';

final class InsertMessageUseCase extends BaseInsertUseCase<Message> {
  const InsertMessageUseCase(MessageRepository super._repository);
}
