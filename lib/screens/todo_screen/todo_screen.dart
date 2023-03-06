import 'package:flutter/material.dart';

import 'action_bar/action_bar.dart';
import 'add_todo/add_todo.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amberAccent,
            title: Text('Todos'),
          ),
          body: Column(
            children: <Widget>[
              AddTodo(),
              ActionBar(),
              // Description(),
              // TodoListView()
            ],
          )),
    );
  }
}
