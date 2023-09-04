import 'package:riverpod_clean_architecture/core/index.dart';

abstract class BaseUpdateUseCase<T extends BaseModel>
    extends BaseUseCase<void, T> {
  const BaseUpdateUseCase(this.repository);

  final BaseRepository<T> repository;

  @override
  Future<DataState<void>> call(T params) => repository.update(params);
}
