import 'package:supabase_flutter/supabase_flutter.dart';

import '../../data_helpers/data_filter.dart';
import '../base_model.dart';
import '../base_service.dart';

abstract class BaseSupabaseService<T extends BaseModel> extends BaseService<T> {
  final supabaseClient = Supabase.instance.client;

  String get tableName;

  T fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson(T data);

  //ANCHOR - getAll
  @override
  Future<List<T>> getAll(DataFilter? filter) {
    final select = Supabase.instance.client
        .from(tableName)
        .select<List<Map<String, dynamic>>>();
    if (filter != null) {
      select.filter(filter.column, filter.operator.value, filter.value);
    }

    final converter = select.withConverter(
      (data) => data.map<T>(fromJson).toList(),
    );
    return converter;
  }

  //ANCHOR - findById
  @override
  Future<T> getById(int id) {
    final select = Supabase.instance.client
        .from(tableName)
        .select<Map<String, dynamic>>()
        .eq('id', id)
        .single();
    final converter = select.withConverter(
      fromJson,
    );
    return converter;
  }

  //ANCHOR - insert and return data object
  @override
  Future<T> insert(T data) async {
    final result = Supabase.instance.client
        .from(tableName)
        .insert(
          toJson(data),
        )
        .select<Map<String, dynamic>>()
        .single();

    return result.withConverter(fromJson);
  }

  //ANCHOR - insert and return item id
  /*  Future<int?> insertWithId(T data) async {
    final result = Supabase.instance.client
        .from(tableName)
        .insert(
          toJson(data),
        )
        .select<Map<String, dynamic>>('id')
        .single();

    return result.withConverter((data) => data['id'] as int?);

    //return result.withConverter((data) => data['id']);
  } */

  //ANCHOR - update
  @override
  Future<void> update(T data) async {
    if (data.id == null) {
      throw const PostgrestException(message: 'id cannot be null');
    }

    await Supabase.instance.client
        .from(tableName)
        .update(
          toJson(data),
        )
        .eq('id', data.id);
  }

  //ANCHOR - delete
  @override
  Future<void> delete(T data) async {
    if (data.id == null) {
      throw const PostgrestException(message: 'id cannot be null');
    }

    await Supabase.instance.client.from(tableName).delete().eq('id', data.id);
  }
}
