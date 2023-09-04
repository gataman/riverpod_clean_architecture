import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../repository/module.dart';
import 'index.dart';

final getAllUserUseCase = Provider<GetAllUserUseCase>((ref) {
  final repository = ref.read(userRepository);
  return GetAllUserUseCase(repository);
});

final getByIdUserUseCase = Provider<GetByIdUserUseCase>((ref) {
  final repository = ref.watch(userRepository);
  return GetByIdUserUseCase(repository);
});

final insertUserUseCase = Provider<InsertUserUseCase>((ref) {
  final repository = ref.watch(userRepository);
  return InsertUserUseCase(repository);
});

final updateUserUseCase = Provider<UpdateUserUseCase>((ref) {
  final repository = ref.watch(userRepository);
  return UpdateUserUseCase(repository);
});

final deleteUserUseCase = Provider<DeleteUserUseCase>((ref) {
  final repository = ref.watch(userRepository);
  return DeleteUserUseCase(repository);
});
