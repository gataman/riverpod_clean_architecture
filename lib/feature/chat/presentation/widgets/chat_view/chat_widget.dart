part of '../../views/chat_view.dart';

class ChatWidget extends ConsumerWidget {
  const ChatWidget({
    required this.otherUserId,
    super.key,
  });
  final int otherUserId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatViewState = ref.watch(chatViewModel(otherUserId));

    return chatViewState.when(
      loading: _loadingWidget,
      loaded: _loadedWidget,
      error: errorWidget,
    );
  }

  Widget _loadedWidget(ChatWithUsers chatWithUsers) {
    return MessageListWidget(chatWithUsers: chatWithUsers);
  }

  Widget _loadingWidget() => const Center(
        child: CircularProgressIndicator(),
      );

  Widget errorWidget(String error) => Center(
        child: Text('Error: $error'),
      );
}
