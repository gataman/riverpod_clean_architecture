import 'imports/chat_view_imports.dart';

part '../widgets/chat_view/bubble_other_card.dart';
part '../widgets/chat_view/chat_widget.dart';
part '../widgets/chat_view/message_list_widget.dart';
part '../widgets/chat_view/message_text_input_widget.dart';

class ChatView extends StatelessWidget {
  const ChatView({required this.otherUser, super.key});
  final UserModel otherUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: SafeArea(
        child: ChatWidget(
          otherUserId: otherUser.id!,
        ),
      ),
    );
  }

  AppBar get _appBar {
    return AppBar(
      //backgroundColor: Colors.red,
      leadingWidth: 30,
      surfaceTintColor: ColorConstants.backgroundColor,
      backgroundColor: ColorConstants.backgroundColor,
      scrolledUnderElevation: 10,
      titleSpacing: 0,
      title: UserCard(user: otherUser, isAppBar: true),
    );
  }
}
