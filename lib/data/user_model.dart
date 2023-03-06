class UserModel {
  String? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;
  UserModel({this.id, this.email, this.firstName, this.lastName, this.avatar});

  factory UserModel.fromJSON(Map<String, dynamic> json) {
    return UserModel(
      firstName: json['first_name'].toString(),
      lastName: json['last_name'].toString(),
      email: json['email'].toString(),
      avatar: json['avatar'].toString(),
      id: json['id'].toString(),
    );
  }
}
