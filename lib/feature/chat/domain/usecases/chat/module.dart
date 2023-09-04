import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../repository/module.dart';
import 'check_users_chat_usecase.dart';

import 'index.dart';

final getAllChatUseCase = Provider<GetAllChatUseCase>((ref) {
  final repository = ref.watch(chatRepository);
  return GetAllChatUseCase(repository);
});

final getByIdChatUseCase = Provider<GetByIdChatUseCase>((ref) {
  final repository = ref.watch(chatRepository);
  return GetByIdChatUseCase(repository);
});

final insertChatUseCase = Provider<InsertChatUseCase>((ref) {
  final repository = ref.watch(chatRepository);
  return InsertChatUseCase(repository);
});

final updateChatUseCase = Provider<UpdateChatUseCase>((ref) {
  final repository = ref.watch(chatRepository);
  return UpdateChatUseCase(repository);
});

final deleteChatUseCase = Provider<DeleteChatUseCase>((ref) {
  final repository = ref.watch(chatRepository);
  return DeleteChatUseCase(repository);
});

final checkUsersChatUseCase = Provider<CheckUsersChatUseCase>((ref) {
  final repository = ref.watch(chatRepository);
  return CheckUsersChatUseCase(repository);
});
