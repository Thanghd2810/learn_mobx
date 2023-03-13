import 'package:flutter/material.dart';

import '../../data/user_model.dart';
import '../../services/user_service.dart';

class SingleUser extends StatefulWidget {
  const SingleUser({super.key});

  @override
  _SingleUserState createState() => _SingleUserState();
}

class _SingleUserState extends State<SingleUser> {
  late UserModel data;
  late UserService _userService;
  TextEditingController _nameController = TextEditingController();

  TextEditingController _jobController = TextEditingController();
  @override
  void initState() {
    data = UserModel();
    _userService = UserService();
    getData();
    super.initState();
  }

  void getData() async {
    dynamic getData =
        await _userService.getSingleUser(url: 'https://reqres.in/api/users/2');
    setState(() {
      data = getData;
    });
  }

  final UserService _getSingleUser = UserService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Info'),
      ),
      body: Center(
        child: Text(data.firstName ?? '',
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
