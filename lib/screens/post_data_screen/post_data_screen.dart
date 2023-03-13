import 'package:flutter/material.dart';
import 'package:learn_mobx/data/user_info_model.dart';

import '../../data/user_model.dart';
import '../../services/user_service.dart';
import '../../store/user_store.dart';

class PostDataScreen extends StatefulWidget {
  const PostDataScreen({super.key});
  @override
  State<PostDataScreen> createState() => _PostDataScreenState();
}

class _PostDataScreenState extends State<PostDataScreen> {
  late UserInfo data;
  late UserService _userService;
  TextEditingController _nameController = TextEditingController();

  TextEditingController _jobController = TextEditingController();
  @override
  void initState() {
    data = UserInfo();
    _userService = UserService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Post data'.toUpperCase()),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  label: Text('name'),
                  hintText: 'input your name'.toLowerCase(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: TextField(
                controller: _jobController,
                decoration: InputDecoration(
                  label: Text('job'),
                  hintText: 'input your address'.toLowerCase(),
                ),
              ),
            ),
            SizedBox(
              width: 100,
              height: 50,
              child: TextButton(
                onPressed: () async {
                  final _nameValue = _nameController.text;
                  final _jobValue = _jobController.text;
                  dynamic postData = await _userService.postUser(
                      hoTen: _nameValue, ngheNghiep: _jobValue);
                  if (this.mounted) {
                    setState(() {
                      data = postData;
                      print(data);
                    });
                  }
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
