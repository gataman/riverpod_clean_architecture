import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_clean_architecture/feature/chat/data/module.dart';
import 'package:riverpod_clean_architecture/feature/chat/data/remote/supabase/index.dart';
import 'package:riverpod_clean_architecture/feature/chat/domain/model/message/message.dart';

import '../../../../../service_helper.dart';

void main() {
  late ProviderContainer providerContainer;
  late MessageService service;

  setUp(() async {
    //initialize Supabase instance
    await ServiceHelper.initializeSupabase();
    //Create container for riverpod provider
    providerContainer = ProviderContainer();
    //Get MessageService instance from provider
    service = providerContainer.read(messageService);
  });

  //If you run group of test, need to dispose supabase instance
  tearDown(ServiceHelper.disposeSupabase);

  test('get all messages ...', () async {
    // get all messages.
    final result = await service.getAll(null);
    expect(result, isA<List<Message>>());
  });

  test('get message with id ...', () async {
    // get message with id 15. if id is not exist, it will throw an error
    final result = await service.getById(15);
    expect(result, isA<Message>());
  });

  test('create message ...', () async {
    // create message with chatId 1. if chatId  and sender are not exist,
    // it will throw an error
    final item = Message(
      chatId: 1,
      senderId: 4,
      message: 'This is a test message',
    );
    final result = await service.insert(item);
    expect(result, isA<Message>());
  });

  test('update message ...', () async {
    // update message with id 45. if id  not exist,
    // it will throw an error
    final item = Message(
      id: 45,
      chatId: 1,
      senderId: 4,
      message: 'This is a updated test message',
    );
    await service.update(item);
  });

  test('delete message ...', () async {
    // delete message with id 45. if id not exist,
    // it will throw an error
    final item = Message(
      id: 45,
      chatId: 1,
      senderId: 4,
      message: 'This is a deleted test message',
    );
    await service.delete(item);
  });
}
