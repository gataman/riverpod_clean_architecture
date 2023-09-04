import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_clean_architecture/constants/app_constants.dart';
import 'package:riverpod_clean_architecture/feature/chat/domain/usecases/chat/module.dart';

import '../../../domain/model/message/message.dart';
import 'chat_view_state.dart';

class ChatViewModel extends StateNotifier<ChatViewState> {
  ChatViewModel(
    this._ref,
    this._otherUserId,
  ) : super(ChatViewState.loading()) {
    _init();
  }

  final Ref _ref;
  final int _otherUserId;

  Future<void> _init() async {
    const currentUserId = AppConstants.currentUserId;
    final result = await _ref.read(checkUsersChatUseCase).call(
          user1: currentUserId,
          user2: _otherUserId,
        );

    result.when(
      success: (chatId) {
        if (chatId != null) {
          //chat already exists, get message list
          state = ChatViewState.loaded(chatId: chatId);
          debugPrint('chat already exists, get message list');
        } else {
          //chat does not exist, create new chat
          debugPrint('chat does not exist, create new chat');
        }
      },
      error: (error) {
        // has error try create new chat
        debugPrint('has error try create new chat');
      },
    );
  }

  void sendMessage(Message message) {}
}
