part of '../../views/chat_view.dart';

class MessageListWidget extends ConsumerWidget {
  const MessageListWidget({required this.chatWithUsers, super.key});
  final ChatWithUsers chatWithUsers;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stream = ref.watch(messageListStreamProvider(chatWithUsers.chatId));
    return Column(
      children: [
        Expanded(
          child: stream.when(
            data: (data) => _showListView(data, ref),
            error: _showError,
            loading: _showLoading,
          ),
        ),
        MessageTextInputWidget(
          chatId: chatWithUsers.chatId,
        )
      ],
    );
  }

  Widget _showListView(List<Message> messageList, WidgetRef ref) {
    int? senderId;
    if (messageList.isNotEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          reverse: true,
          itemBuilder: (context, index) {
            var message = messageList[index];

            final isSender = message.senderId == AppConstants.currentUserId;
            if (senderId == null) {
              message = messageList[index].copyWith(isTail: true);
            } else {
              if (message.senderId == senderId) {
                message = messageList[index].copyWith(isTail: false);
              } else {
                message = messageList[index].copyWith(isTail: true);
              }
            }
            senderId = message.senderId;

            return isSender
                ? Padding(
                    padding: EdgeInsets.only(
                      bottom: message.isTail ?? false ? 16 : 0,
                    ),
                    child: BubbleSpecialOne(
                      text: message.message,
                      color: isSender ? Colors.blue : Colors.grey,
                      isSender: isSender,
                      tail: message.isTail ?? false,
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.only(
                      bottom: message.isTail ?? false ? 16 : 0,
                    ),
                    child: BubbleOtherCard(
                      message: message,
                      userList: userList,
                    ),
                  );
          },
          itemCount: messageList.length,
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Mesaj yazmak için mesaj kutusuna dokunun. Mesajlarınız burada görünecektir.',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }

  Widget _showError(Object error, StackTrace stackTrace) {
    return Text(error.toString());
  }

  Widget _showLoading() {
    return const Center(
      child: Text('Mesajlar yükleniyor...'),
    );
  }

  List<UserModel> get userList => [
        chatWithUsers.user1!,
        chatWithUsers.user2!,
      ];
}
