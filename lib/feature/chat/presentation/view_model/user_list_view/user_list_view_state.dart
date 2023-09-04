import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/model/user/user_model.dart';

part 'user_list_view_state.freezed.dart';

@freezed
class UserListViewState with _$UserListViewState {
  factory UserListViewState.error({required String errorMessage}) =
      _UserListViewErrorState;
  factory UserListViewState.loading() = _UserListViewLoadingState;
  factory UserListViewState.loaded({
    required List<UserModel> chatWithUserList,
  }) = _UserListViewLoadedState;
}
