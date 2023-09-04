import '../../data_helpers/data_state.dart';
import '../base_model.dart';
import '../base_repository.dart';
import 'base_usecase.dart';

abstract class BaseInsertUseCase<T extends BaseModel>
    extends BaseUseCase<T, T> {
  const BaseInsertUseCase(this.repository);

  final BaseRepository<T> repository;

  @override
  Future<DataState<T>> call(T params) => repository.insert(params);
}
