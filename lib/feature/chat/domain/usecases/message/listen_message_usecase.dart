import '../../../../../core/index.dart';

import '../../model/message/message.dart';
import '../../repository/message_repository.dart';

class ListenMessageUseCase extends BaseSafeUseCase<Stream<List<Message>>, int> {
  ListenMessageUseCase(this._repository);

  final MessageRepository _repository;

  @override
  Stream<List<Message>> call(int params) =>
      _repository.listenMessages(chatId: params);
}
