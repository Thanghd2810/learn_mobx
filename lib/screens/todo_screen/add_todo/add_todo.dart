import 'package:flutter/material.dart';

class AddTodo extends StatelessWidget {
  AddTodo({super.key});
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              _textController.clear();
            },
          ),
          labelText: 'Add a Todo',
          contentPadding: const EdgeInsets.all(8)),
      controller: _textController,
      textInputAction: TextInputAction.done,
    );
  }
}
