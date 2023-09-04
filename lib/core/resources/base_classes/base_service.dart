import '../data_helpers/data_filter.dart';
import 'base_model.dart';

abstract class BaseService<T extends BaseModel> {
  Future<List<T>> getAll(DataFilter? filter);

  Future<T> getById(int id);

  Future<T> insert(T data);

  //Future<int?> insertWithId(T data);

  Future<void> update(T data);

  Future<void> delete(T data);
}
