import '../../data_helpers/data_state.dart';
import '../base_model.dart';
import '../base_repository.dart';
import 'base_usecase.dart';

abstract class BaseDeleteUseCase<T extends BaseModel>
    extends BaseUseCase<void, T> {
  const BaseDeleteUseCase(this.repository);

  final BaseRepository<T> repository;

  @override
  Future<DataState<void>> call(T params) => repository.delete(params);
}
