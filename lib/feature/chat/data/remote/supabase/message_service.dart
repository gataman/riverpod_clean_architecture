import '../../../../../core/index.dart';
import '../../../domain/model/message/message.dart';

class MessageService extends BaseSupabaseService<Message> {
  @override
  Message fromJson(Map<String, dynamic> json) => Message.fromJson(json);

  @override
  String get tableName => 'messages';

  @override
  Map<String, dynamic> toJson(Message data) => data.toJson();

  //ANCHOR - listenMessages
  Stream<List<Message>> listenMessages({required int chatId}) {
    return supabaseClient
        .from(tableName)
        .stream(primaryKey: ['id'])
        .eq('chat_id', chatId)
        .order('created_at')
        .map(
          (maps) => maps.map(Message.fromJson).toList(),
        );
  }
}
