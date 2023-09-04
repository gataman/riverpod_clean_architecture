import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'base_model.dart';

abstract class BaseListStateNotifier<T extends BaseModel>
    extends StateNotifier<List<T>> {
  BaseListStateNotifier() : super([]);

  void add(T data) {
    state = [...state, data];
  }

  void addAll(List<T> data) {
    state = [...state, ...data];
  }

  void remove(T data) {
    state = state.where((element) => element.id != data.id).toList();
  }

  void removeAll() {
    state = [];
  }

  void update(T data) {
    state = state.map((e) => e.id == data.id ? data : e).toList();
  }

  set updateAll(List<T> data) {
    state = data;
  }
}
