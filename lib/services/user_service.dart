import 'dart:convert';

import 'package:dio/dio.dart';

import '../data/user_info_model.dart';
import '../data/user_model.dart';

class UserService {
  static BaseOptions options = BaseOptions(
    baseUrl: 'https://api.pub.dev',
    connectTimeout: Duration(seconds: 5),
    receiveTimeout: Duration(seconds: 3),
  );
  Dio dio = Dio(options);

  Future<List<UserModel>?> getUser({required String url}) async {
    List<UserModel>? listUser;
    try {
      final Response response = await dio.get(url);
      if (response.statusCode == 200) {
        final data = (response.data);
        listUser = List<UserModel>.from((data["data"] as List).map((e) {
          return UserModel.fromJson(e);
        }));
      }
    } catch (e) {
      print(e);
    }
    return listUser;
  }

  Future<void> deleteUser({required String id}) async {
    try {
      await dio.delete('https://reqres.in/api/users/$id');
    } catch (e) {
      print('Error deleting user: $e');
    }
  }

  Future<UserInfo?> postUser({required hoTen, required ngheNghiep}) async {
    UserInfo? newData;
    Map<String, dynamic> data = {'name': hoTen, 'job': ngheNghiep};
    try {
      Response response =
          await dio.post('https://reqres.in/api/users', data: data);
      if (response.statusCode == 200) {
        newData = (UserInfo.fromJson(response.data));
      }
    } catch (e) {
      print(e);
    }
    return newData;
  }

  Future<UserModel?> getSingleUser({required String url}) async {
    UserModel? listUser;
    try {
      final Response response = await dio.get(url);
      if (response.statusCode == 200) {
        final data = (response.data['data']);
        listUser = UserModel.fromJson(data);
      }
    } catch (e) {
      print(e);
    }
    return listUser;
  }
}
