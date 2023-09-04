part of '../../views/chat_view.dart';

class MessageTextInputWidget extends HookConsumerWidget {
  const MessageTextInputWidget({required this.chatId, super.key});
  final int chatId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textEditingController = useTextEditingController();
    final isLoading = useState(false);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextFormField(
        controller: textEditingController,
        keyboardType: TextInputType.multiline,
        textInputAction: TextInputAction.send,
        maxLines: null,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Mesaj',
          prefixIcon: const Icon(Icons.emoji_emotions),
          suffixIcon: isLoading.value
              ? const Padding(
                  padding: EdgeInsets.all(16),
                  child: CircularProgressIndicator(),
                )
              : IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () async {
                    isLoading.value = true;
                    await _sendMessage(
                      ref,
                      textEditingController,
                      context,
                    );
                    isLoading.value = false;
                  },
                ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        onFieldSubmitted: (newValue) async {
          isLoading.value = true;
          await _sendMessage(
            ref,
            textEditingController,
            context,
          );
          isLoading.value = false;
        },
      ),
    );
  }

  Future<void> _sendMessage(
    WidgetRef ref,
    TextEditingController controller,
    BuildContext context,
  ) async {
    await Future<void>.delayed(const Duration(seconds: 2));
    final msg = controller.text;

    if (msg.isEmpty) return;

    final message = Message(
      chatId: chatId,
      message: msg,
      senderId: AppConstants.currentUserId,
    );
    if (context.mounted) {
      await ref.read(insertMessageUseCase).call(message).then((value) {
        controller.clear();
      }).onError((error, stackTrace) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(error.toString()),
          ),
        );
      });
    }
  }
}
