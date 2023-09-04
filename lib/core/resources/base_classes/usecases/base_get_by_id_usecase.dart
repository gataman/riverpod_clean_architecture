import '../../data_helpers/data_state.dart';
import '../base_model.dart';
import '../base_repository.dart';
import 'base_usecase.dart';

class BaseGetByIdUseCase<T extends BaseModel> extends BaseUseCase<T, int> {
  const BaseGetByIdUseCase(this.repository);

  final BaseRepository<T> repository;

  @override
  Future<DataState<T>> call(int params) => repository.getById(params);
}
