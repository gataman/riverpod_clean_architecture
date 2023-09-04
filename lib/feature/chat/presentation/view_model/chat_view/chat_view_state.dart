import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/model/chat/chat_with_users.dart';

part 'chat_view_state.freezed.dart';

@freezed
class ChatViewState with _$ChatViewState {
  factory ChatViewState.error({required String errorMessage}) =
      _ChatViewErrorState;
  factory ChatViewState.loading() = _ChatViewLoadingState;
  factory ChatViewState.loaded({
    required ChatWithUsers chatId,
  }) = _ChatViewLoadedState;
}
