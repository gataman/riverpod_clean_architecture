import '../../../../core/index.dart';
import '../model/message/message.dart';

abstract class MessageRepository extends BaseRepository<Message> {
  MessageRepository(super.service);

  Stream<List<Message>> listenMessages({required int chatId});
}
