import '../../domain/repository/user_repository.dart';
import '../remote/supabase/user_service.dart';

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl(UserService super.service);
}
