import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_clean_architecture/feature/chat/data/module.dart';
import 'package:riverpod_clean_architecture/feature/chat/data/remote/supabase/index.dart';
import 'package:riverpod_clean_architecture/feature/chat/domain/model/user/user_model.dart';

import '../../../../../service_helper.dart';

void main() {
  late ProviderContainer providerContainer;
  late UserService service;

  setUp(() async {
    //initialize Supabase instance
    await ServiceHelper.initializeSupabase();
    //Create container for riverpod provider
    providerContainer = ProviderContainer();
    //Get UserService instance from provider
    service = providerContainer.read(userService);
  });

  //If you run group of test, need to dispose supabase instance
  tearDown(ServiceHelper.disposeSupabase);

  test('get all users ...', () async {
    // get all users.
    final result = await service.getAll(null);
    expect(result, isA<List<UserModel>>());
  });

  test('get user with id ...', () async {
    // get user with id 4. if id is not exist, it will throw an error
    final result = await service.getById(4);
    expect(result, isA<UserModel>());
  });

  test('create user ...', () async {
    // Create user
    final item = UserModel(
      email: 'test@test.com',
      name: 'testName',
      surname: 'testSurname',
    );
    final result = await service.insert(item);
    expect(result, isA<UserModel>());
  });

  test('update user ...', () async {
    // update user with id 8. if id is not exist,
    // it will throw an error
    final item = UserModel(
      id: 8,
      email: 'test@testupdated.com',
      name: 'testUpdateName',
      surname: 'testUpdateSurname',
    );
    await service.update(item);
  });

  test('delete user ...', () async {
    // delete user with id 8. if id not exist,
    // it will throw an error
    final item = UserModel(
      id: 8,
      email: 'test@test.com',
      name: 'testName',
      surname: 'testSurname',
    );

    await service.delete(item);
  });
}
