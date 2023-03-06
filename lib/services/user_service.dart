import 'dart:convert';

import 'package:dio/dio.dart';

import '../data/user_model.dart';

class UserService {
  Dio dio = Dio();
  Future<List<UserModel>> getUser({required String url}) async {
    List<UserModel> listUser = [];
    try {
      final Response response = await dio.get(url);
      if (response.statusCode == 200) {
        final data = (response.data);
        listUser = (data["data"] as List).map((e) {
          return UserModel.fromJSON(e);
        }).toList();
      }
    } catch (e) {
      print(e);
    }
    return listUser;
  }
}
