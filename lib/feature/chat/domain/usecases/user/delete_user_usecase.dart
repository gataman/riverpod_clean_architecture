import '../../../../../core/index.dart';
import '../../model/user/user_model.dart';
import '../../repository/user_repository.dart';

final class DeleteUserUseCase extends BaseDeleteUseCase<UserModel> {
  const DeleteUserUseCase(UserRepository super._repository);
}
