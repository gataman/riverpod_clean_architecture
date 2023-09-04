import '../../../../core/index.dart';
import '../model/user/user_model.dart';

abstract class UserRepository extends BaseRepository<UserModel> {
  UserRepository(super.service);
}
