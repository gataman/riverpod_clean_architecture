import '../../../../../core/index.dart';
import '../../model/user/user_model.dart';
import '../../repository/user_repository.dart';

final class UpdateUserUseCase extends BaseUpdateUseCase<UserModel> {
  const UpdateUserUseCase(UserRepository super._repository);
}
