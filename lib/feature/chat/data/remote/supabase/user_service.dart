import '../../../../../core/index.dart';
import '../../../domain/model/user/user_model.dart';

class UserService extends BaseSupabaseService<UserModel> {
  @override
  UserModel fromJson(Map<String, dynamic> json) => UserModel.fromJson(json);

  @override
  String get tableName => 'users';

  @override
  Map<String, dynamic> toJson(UserModel data) => data.toJson();
}
