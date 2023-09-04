import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../repository/module.dart';
import 'index.dart';
import 'listen_message_usecase.dart';

final getAllMessageUseCase = Provider<GetAllMessageUseCase>((ref) {
  final repository = ref.read(messageRepository);
  return GetAllMessageUseCase(repository);
});

final getByIdMessageUseCase = Provider<GetByIdMessageUseCase>((ref) {
  final repository = ref.watch(messageRepository);
  return GetByIdMessageUseCase(repository);
});

final insertMessageUseCase = Provider<InsertMessageUseCase>((ref) {
  final repository = ref.watch(messageRepository);
  return InsertMessageUseCase(repository);
});

final updateMessageUseCase = Provider<UpdateMessageUseCase>((ref) {
  final repository = ref.watch(messageRepository);
  return UpdateMessageUseCase(repository);
});

final deleteMessageUseCase = Provider<DeleteMessageUseCase>((ref) {
  final repository = ref.watch(messageRepository);
  return DeleteMessageUseCase(repository);
});

final listenMessageUseCase = Provider<ListenMessageUseCase>((ref) {
  final repository = ref.watch(messageRepository);
  return ListenMessageUseCase(repository);
});
