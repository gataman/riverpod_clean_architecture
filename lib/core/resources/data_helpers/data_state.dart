import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'data_exception.dart';

part 'data_state.freezed.dart';

@freezed
class DataState<T> with _$DataState<T> {
  factory DataState.success(T data) = _loaded<T>;
  factory DataState.error(DataException error) = _error;

  // Check data from method, if error return DataState.error
  static Future<DataState<T>> checkData<T>(Future<T> method) async {
    try {
      final result = await method;
      return DataState.success(result);
    } on PostgrestException catch (e) {
      return DataState<T>.error(
        DataException(
          message: e.message,
          code: e.code,
        ),
      );
    }
  }
}
