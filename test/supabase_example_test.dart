import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_clean_architecture/feature/chat/domain/model/chat/chat_with_users.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() {
  late SupabaseClient supabaseClient;

  setUp(() async {
    await dotenv.load();
    supabaseClient = SupabaseClient(
      dotenv.env['SUPABASE_URL'] ?? '',
      dotenv.env['SUPABASE_KEY'] ?? '',
    );
  });

/* 
  test('get all user chat ...', () async {
    final result = await supabaseClient
        .from('user_chats')
        .select<List<Map<String, dynamic>>>()
        .withConverter(
          (data) => data.map(UserChat.fromJson).toList(),
        );

    expect(result, isA<List<UserChat>>());
  });

  test('get all user chat with other data ...', () async {
    DataState<List<ChatWithUserDetail>>? state;
    try {
      final result = await supabaseClient.functions.invoke(
        'get-all-chat-with-user',
        body: {'id': 4},
      );

      final list = <ChatWithUserDetail>[];

      if (result.status == 200 && result.data != null) {
        final map = result.data as List<dynamic>;

        for (final element in map) {
          final json = element as Map<String, dynamic>;
          final chatUserWithDetail = ChatWithUserDetail.fromJson(json);
          list.add(chatUserWithDetail);
        }
      }

      state = DataState<List<ChatWithUserDetail>>.success(list);
    } catch (e) {
      state = DataState<List<ChatWithUserDetail>>.error(
        DataException(
          message: e.toString(),
        ),
      );
    }

    print(state);
  });
 */

  test('check users chat with json ...', () async {
    const user1 = 4;
    const user2 = 5;
    final response = await supabaseClient
        .from('chats')
        .select<Map<String, dynamic>>(
          'id,user_ids, users!left(name) where id.eq.1',
        )
        .or(
          'and(user_ids->user1.eq.$user1, user_ids->user2.eq.$user2), '
          'and(user_ids->user1.eq.$user2, user_ids->user2.eq.$user1)',
        )
        .single();

    //.or('user_ids->>user1.eq.5, user_ids->>user2.eq.5');
    //.contains('users', '[{"id": 4}]');

    print(response);

    //expect(result, isA<List<UserChat>>());
  });

  test('check users chat ...', () async {
    const user1 = 4;
    const user2 = 7;
    final response = await supabaseClient
        .from('chats')
        .select<Map<String, dynamic>>(
          'chatId:id,chatName:name, '
          'user1:users!chats_user1_fkey(id,name,surname,photo_url), '
          'user2:users!chats_user2_fkey(id,name,surname,photo_url)',
        )
        .or(
          'and(user1.eq.$user1, user2.eq.$user2), '
          'and(user1.eq.$user2, user2.eq.$user1)',
        )
        .single()
        .withConverter(ChatWithUsers.fromJson);

    //.or('user_ids->>user1.eq.5, user_ids->>user2.eq.5');
    //.contains('users', '[{"id": 4}]');

    print(response);

    //expect(result, isA<List<UserChat>>());
  });

  /*


  test('check users chat with json ...', () async {
    const user1 = 4;
    const user2 = 5;
    final response = await supabaseClient
        .from('chats')
        .select<Map<String, dynamic>>(
          'id,user_ids, users!left(name) where id.eq.1',
        )
        .or(
          'and(user_ids->user1.eq.$user1, user_ids->user2.eq.$user2), '
          'and(user_ids->user1.eq.$user2, user_ids->user2.eq.$user1)',
        )
        .single();

    //.or('user_ids->>user1.eq.5, user_ids->>user2.eq.5');
    //.contains('users', '[{"id": 4}]');

    print(response);

    //expect(result, isA<List<UserChat>>());
  });

  */
}
