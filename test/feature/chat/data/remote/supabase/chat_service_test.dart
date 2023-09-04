import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_clean_architecture/feature/chat/data/data_sources/remote/supabase/index.dart';
import 'package:riverpod_clean_architecture/feature/chat/data/module.dart';
import 'package:riverpod_clean_architecture/feature/chat/domain/model/chat/chat.dart';

import '../../../../../service_helper.dart';

void main() {
  late ProviderContainer providerContainer;
  late ChatService service;

  setUp(() async {
    //initialize Supabase instance
    await ServiceHelper.initializeSupabase();
    //Create container for riverpod provider
    providerContainer = ProviderContainer();
    //Get ChatService instance from provider
    service = providerContainer.read(chatService);
  });

  //If you run group of test, need to dispose supabase instance
  tearDown(ServiceHelper.disposeSupabase);

  test('get all chats ...', () async {
    final result = await service.getAll(null);
    expect(result, isA<List<Chat>>());
  });

  test('get chat with id ...', () async {
    final result = await service.getById(1);
    expect(result, isA<Chat>());
  });

  test('create chat ...', () async {
    final chat = Chat(
      name: 'testChat',
    );
    final result = await service.insert(chat);
    print(result);
    expect(result, isA<Chat>());
  });

  test('update chat ...', () async {
    final chat = Chat(
      id: 4,
      name: 'testChatUpdated',
    );
    await service.update(chat);
  });

  test('delete chat ...', () async {
    final chat = Chat(
      id: 4,
      name: 'testChatUpdated',
    );
    await service.delete(chat);
  });
}
