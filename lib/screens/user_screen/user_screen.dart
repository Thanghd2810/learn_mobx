import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:learn_mobx/data/user_model.dart';
import 'package:learn_mobx/store/user_store.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class UserScreen extends StatelessWidget {
  UserScreen({Key? key}) : super(key: key) {
    /// Để call api cho trang va chỉ call 1 lần duy nhất
    store.fetchUsers();
  }

  UserStore store = UserStore();

  @override
  Widget build(BuildContext context) {
    /// Nếu mà ném hàm call api xuống dưới hàm build thì api sẽ được call lại liên tục
    /// khoomg nên khởi tạo store ở dưới hàm build và call api ở dưới này để tránh lỗi và tăng performance
    /// đã call api trả dữ liệu về dưới dạng gán biến
    final future = store.usersFuture;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Thông tin user"),
        backgroundColor: Colors.amber,
      ),
      body: Observer(
        builder: (context) {
          if (future.status == FutureStatus.pending) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          }
          if (future.status == FutureStatus.rejected) {
            return const Center(
              child: Text(
                "Lỗi rồi ạ ...........................",
                style: TextStyle(color: Colors.black),
              ),
            );
          }
          if (future.status == FutureStatus.fulfilled) {
            final List<UserModel> users = future.result;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                UserModel _user = users[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(_user.avatar ?? ""),
                  ),
                  title: Text(
                    (_user.firstName ?? "") + (_user.lastName ?? ""),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    _user.email ?? "",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}
