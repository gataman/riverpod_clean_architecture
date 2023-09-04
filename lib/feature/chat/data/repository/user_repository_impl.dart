import '../../domain/repository/user_repository.dart';
import '../data_sources/remote/supabase/user_service.dart';

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl(UserService super.service);
}
