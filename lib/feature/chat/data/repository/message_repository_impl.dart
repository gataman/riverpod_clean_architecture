import '../../domain/model/message/message.dart';
import '../../domain/repository/message_repository.dart';
import '../remote/supabase/message_service.dart';

class MessageRepositoryImpl extends MessageRepository {
  MessageRepositoryImpl(this._service) : super(_service);

  final MessageService _service;

  @override
  Stream<List<Message>> listenMessages({required int chatId}) =>
      _service.listenMessages(chatId: chatId);
}
