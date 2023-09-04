import '../../../../../core/index.dart';
import '../../model/user/user_model.dart';
import '../../repository/user_repository.dart';

final class GetAllUserUseCase extends BaseGetAllUseCase<UserModel> {
  const GetAllUserUseCase(UserRepository super._repository);
}
