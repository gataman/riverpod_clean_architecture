import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'data_sources/remote/supabase/index.dart';

final messageService = Provider<MessageService>((ref) {
  return MessageService();
});

final chatService = Provider<ChatService>((ref) {
  return ChatService();
});

final userService = Provider<UserService>((ref) {
  return UserService();
});
