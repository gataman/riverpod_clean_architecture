import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/index.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel, BaseModel {
  factory UserModel({
    @JsonKey(includeIfNull: false) int? id,
    String? email,
    String? name,
    String? surname,
    @JsonKey(name: 'photo_url') String? photoUrl,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
