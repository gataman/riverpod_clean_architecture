import '../../../../../core/index.dart';
import '../../model/user/user_model.dart';
import '../../repository/user_repository.dart';

final class GetByIdUserUseCase extends BaseGetByIdUseCase<UserModel> {
  const GetByIdUserUseCase(UserRepository super._repository);
}
