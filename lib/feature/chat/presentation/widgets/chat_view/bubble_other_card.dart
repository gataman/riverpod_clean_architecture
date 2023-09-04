part of '../../views/chat_view.dart';

class BubbleOtherCard extends StatelessWidget {
  const BubbleOtherCard({
    required this.userList,
    required this.message,
    super.key,
  });
  final List<UserModel> userList;
  final Message message;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (message.isTail ?? false)
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                  userList
                      .where(
                        (element) => element.id == message.senderId,
                      )
                      .first
                      .photoUrl!,
                ),
                fit: BoxFit.cover,
              ),
            ),
          )
        else
          const SizedBox(width: 40),
        BubbleSpecialOne(
          text: message.message,
          color: Colors.grey,
          isSender: false,
          tail: message.isTail ?? false,
        ),
      ],
    );
  }
}
