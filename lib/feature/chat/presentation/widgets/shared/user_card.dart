import 'package:flutter/material.dart';

import '../../../../../constants/color_constants.dart';
import '../../../domain/model/user/user_model.dart';
import '../../views/chat_view.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    required this.user,
    this.isAppBar = false,
    super.key,
  });

  final UserModel user;
  final bool isAppBar;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (user.id != null) {
          Navigator.push(
            context,
            MaterialPageRoute<ChatView>(
              builder: (context) => ChatView(
                otherUser: user,
              ),
            ),
          );
        }
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(user.photoUrl ?? ''),
        ),
        title: Text('${user.name ?? ''} ' ' ${user.surname ?? ''}'),
        subtitle: Text(
          user.email ?? '',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: ColorConstants.textColor.withOpacity(.5),
              ),
        ),
      ),
    );
  }
}
