import '../../../index.dart';

/// Type, Params
abstract class BaseUseCase<Type, Params> {
  const BaseUseCase();

  Future<DataState<Type>> call(Params params);
}

abstract class BaseSafeUseCase<Type, Params> {
  const BaseSafeUseCase();

  Type call(Params params);
}
