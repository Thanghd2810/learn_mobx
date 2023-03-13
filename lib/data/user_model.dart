// class UserModel {

// String? id;
// String? email;
// String? firstName;
// String? lastName;
// String? avatar;
// UserModel({this.id, this.email, this.firstName, this.lastName, this.avatar});

// factory UserModel.fromJSON(Map<String, dynamic> json) {
//   return UserModel(
//     firstName: json['first_name'].toString(),
//     lastName: json['last_name'].toString(),
//     email: json['email'].toString(),
//     avatar: json['avatar'].toString(),
//     id: json['id'].toString(),
//   );
// }
// }
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel {
  final int? id;
  final String? email;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  final String? avatar;

  UserModel({this.id, this.email, this.firstName, this.lastName, this.avatar});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
