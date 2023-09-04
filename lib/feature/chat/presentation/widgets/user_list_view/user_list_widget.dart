part of '../../views/user_list_view.dart';

class UserListWidget extends ConsumerWidget {
  const UserListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewState = ref.watch(userListViewModel);
    return viewState.when(
      error: _errorState,
      loading: _loadingState,
      loaded: _loadedState,
    );
  }

  Widget _errorState(String errorMessage) {
    return Center(
      child: Text('Meessage: $errorMessage'),
    );
  }

  Widget _loadingState() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _loadedState(List<UserModel> userList) {
    return userList.isNotEmpty
        ? ListView.separated(
            itemCount: userList.length,
            itemBuilder: (context, index) {
              final user = userList[index];
              return UserCard(user: user);
            },
            separatorBuilder: (context, index) => const Divider(
              height: 0,
              thickness: .3,
              color: ColorConstants.dividerColor,
            ),
          )
        : const Center(
            child: Text('No user found'),
          );
  }
}
