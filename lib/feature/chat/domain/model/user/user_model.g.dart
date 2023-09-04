// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      photoUrl: json['photo_url'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['email'] = instance.email;
  val['name'] = instance.name;
  val['surname'] = instance.surname;
  val['photo_url'] = instance.photoUrl;
  return val;
}
