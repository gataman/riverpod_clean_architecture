import '../../../index.dart';

abstract class BaseGetAllUseCase<T extends BaseModel>
    extends BaseUseCase<List<T>, DataFilter?> {
  const BaseGetAllUseCase(this.repository);

  final BaseRepository<T> repository;

  @override
  Future<DataState<List<T>>> call(DataFilter? params) =>
      repository.getAll(params);
}
