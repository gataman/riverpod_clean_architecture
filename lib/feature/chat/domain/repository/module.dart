import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_clean_architecture/feature/chat/domain/repository/user_repository.dart'
    show UserRepository;

import '../../data/module.dart';
import '../../data/repository/index.dart';
import 'chat_repository.dart';
import 'message_repository.dart';

final messageRepository = Provider<MessageRepository>((ref) {
  return MessageRepositoryImpl(ref.watch(messageService));
});

final chatRepository = Provider<ChatRepository>((ref) {
  return ChatRepositoryImpl(ref.watch(chatService));
});

final userRepository = Provider<UserRepository>((ref) {
  return UserRepositoryImpl(ref.watch(userService));
});
