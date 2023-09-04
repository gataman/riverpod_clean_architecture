import 'imports/user_list_view_imports.dart';

part '../widgets/user_list_view/user_list_widget.dart';

class UserListView extends StatelessWidget {
  const UserListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: const UserListWidget(),
    );
  }
}
