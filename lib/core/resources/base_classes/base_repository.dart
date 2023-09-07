import '../data_helpers/data_filter.dart';
import '../data_helpers/data_state.dart';
import 'base_model.dart';
import 'base_service.dart';

abstract class BaseRepository<T extends BaseModel> {
  BaseRepository(this.service);

  final BaseService<T> service;

  Future<DataState<List<T>>> getAll(DataFilter? filter) =>
      DataState.checkData(service.getAll(filter));

  Future<DataState<T>> getById(int id) =>
      DataState.checkData(service.getById(id));

  Future<DataState<T>> insert(T data) =>
      DataState.checkData(service.insert(data));

  Future<DataState<void>> delete(T data) =>
      DataState.checkData(service.delete(data));

  Future<DataState<void>> update(T data) =>
      DataState.checkData(service.update(data));
}
