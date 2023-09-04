import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_clean_architecture/feature/chat/domain/usecases/message/module.dart';
import 'package:riverpod_clean_architecture/feature/chat/presentation/view_model/chat_view/chat_view_model.dart';
import 'package:riverpod_clean_architecture/feature/chat/presentation/view_model/chat_view/chat_view_state.dart';

import '../../domain/model/message/message.dart';
import 'user_list_view/user_list_view_model.dart';
import 'user_list_view/user_list_view_state.dart';

final messageListStreamProvider = StreamProviderFamily<List<Message>, int>(
  (ref, chatId) {
    final usecase = ref.watch(listenMessageUseCase);
    return usecase.call(chatId);
  },
);

final userListViewModel =
    StateNotifierProvider<UserListViewModel, UserListViewState>(
  (ref) => UserListViewModel(ref)..getAllChat(),
);

StateNotifierProviderFamily<ChatViewModel, ChatViewState, int> chatViewModel =
    StateNotifierProvider.family<ChatViewModel, ChatViewState, int>(
  ChatViewModel.new,
);
