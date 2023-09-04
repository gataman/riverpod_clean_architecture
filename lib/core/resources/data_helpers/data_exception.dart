import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_exception.freezed.dart';

@freezed
class DataException with _$DataException {
  factory DataException({
    required String message,
    @Default('600') String? code,
  }) = _DataException;
}
