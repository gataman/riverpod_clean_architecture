import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_clean_architecture/core/index.dart';
import 'package:riverpod_clean_architecture/feature/chat/domain/model/chat/chat.dart';
import 'package:riverpod_clean_architecture/feature/chat/domain/repository/chat_repository.dart';
import 'package:riverpod_clean_architecture/feature/chat/domain/repository/module.dart';

import '../../../../service_helper.dart';

void main() {
  late ProviderContainer providerContainer;
  late ChatRepository repository;

  setUp(() async {
    //initialize Supabase instance
    await ServiceHelper.initializeSupabase();
    //Create container for riverpod provider
    providerContainer = ProviderContainer();
    //Get ChatService instance from provider
    repository = providerContainer.read(chatRepository);
  });

  //If you run group of test, need to dispose supabase instance
  tearDown(ServiceHelper.disposeSupabase);

  test('get all chats ...', () async {
    final result = await repository.getAll(null);
    expect(result, isA<DataState<List<Chat>>>());
  });

  test('get chat with id ...', () async {
    final result = await repository.getById(1);
    expect(result, isA<DataState<Chat>>());
  });

  test('create chat ...', () async {
    final chat = Chat(
      name: 'testChat',
    );
    final result = await repository.insert(chat);
    expect(result, isA<DataState<Chat>>());
  });

  test('update chat ...', () async {
    final chat = Chat(
      id: 4,
      name: 'testChatUpdated',
    );
    await repository.update(chat);
  });

  test('delete chat ...', () async {
    final chat = Chat(
      id: 4,
      name: 'testChatUpdated',
    );
    await repository.delete(chat);
  });
}
