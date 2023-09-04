import '../../../../../core/index.dart';
import '../../model/user/user_model.dart';
import '../../repository/user_repository.dart';

final class InsertUserUseCase extends BaseInsertUseCase<UserModel> {
  const InsertUserUseCase(UserRepository super._repository);
}
