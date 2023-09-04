import 'package:supabase_flutter/supabase_flutter.dart';

import '../data_helpers/data_exception.dart';
import '../data_helpers/data_filter.dart';
import '../data_helpers/data_state.dart';
import 'base_model.dart';
import 'base_service.dart';

abstract class BaseRepository<T extends BaseModel> {
  BaseRepository(this.service);

  final BaseService<T> service;

  Future<DataState<List<T>>> getAll(DataFilter? filter) async {
    try {
      final data = await service.getAll(filter);

      return DataState.success(data);
    } on PostgrestException catch (e) {
      return DataState.error(
        DataException(
          message: e.message,
          code: e.code,
        ),
      );
    }
  }

  Future<DataState<T>> getById(int id) async {
    try {
      final data = await service.getById(id);
      return DataState.success(data);
    } on PostgrestException catch (e) {
      return DataState.error(
        DataException(
          message: e.message,
          code: e.code,
        ),
      );
    }
  }

  Future<DataState<T>> insert(T data) async {
    try {
      final result = await service.insert(data);
      return DataState.success(result);
    } on PostgrestException catch (e) {
      return DataState.error(
        DataException(
          message: e.message,
          code: e.code,
        ),
      );
    }
  }

  Future<DataState<void>> delete(T data) async {
    try {
      final result = await service.delete(data);
      return DataState.success(result);
    } on PostgrestException catch (e) {
      return DataState.error(
        DataException(
          message: e.message,
          code: e.code,
        ),
      );
    }
  }

  Future<DataState<void>> update(T data) async {
    try {
      final result = await service.update(data);
      return DataState.success(result);
    } on PostgrestException catch (e) {
      return DataState.error(
        DataException(
          message: e.message,
          code: e.code,
        ),
      );
    }
  }
}
