import 'package:freezed_annotation/freezed_annotation.dart';

import 'data_exception.dart';

part 'data_state.freezed.dart';

@freezed
class DataState<T> with _$DataState<T> {
  factory DataState.success(T data) = _loaded<T>;
  factory DataState.error(DataException error) = _error;
}
