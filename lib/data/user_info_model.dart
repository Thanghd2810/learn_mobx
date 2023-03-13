import 'package:json_annotation/json_annotation.dart';

part 'user_info_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserInfo {
  final String? name;
  final String? job;
  final String? id;
  final String? createdAt;
  final String? updatedAt;

  UserInfo({
    this.name,
    this.job,
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}
