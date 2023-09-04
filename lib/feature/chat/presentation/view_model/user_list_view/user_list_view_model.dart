import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../constants/app_constants.dart';
import '../../../../../core/index.dart';

import '../../../domain/usecases/user/module.dart';
import 'user_list_view_state.dart';

class UserListViewModel extends StateNotifier<UserListViewState> {
  UserListViewModel(this._ref) : super(UserListViewState.loading());
  final Ref _ref;

  Future<void> getAllChat() async {
    state = UserListViewState.loading();

    const filter = DataFilter(
      column: 'id',
      operator: FilterOperator.neq,
      value: AppConstants.currentUserId,
    );

    final result = await _ref.read(getAllUserUseCase).call(filter);

    result.when(
      success: (data) {
        state = UserListViewState.loaded(chatWithUserList: data);
      },
      error: (error) {
        UserListViewState.error(errorMessage: error.message);
      },
    );
  }
}
