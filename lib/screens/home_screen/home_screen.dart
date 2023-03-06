import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../store/home_screen_store.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;
  HomeScreenStore _store = HomeScreenStore();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Observer(
              builder: (_) => Text(
                '${_store.count}',
                style: const TextStyle(fontSize: 40),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Observer(
              builder: (_) => Text(
                '${_store.sum}',
                style: const TextStyle(fontSize: 40),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Observer(
              builder: (_) {
                return Text(
                  '${_store.count1}',
                  style: TextStyle(fontSize: 40),
                );
              },
            ),
            TextButton(
                onPressed: _store.decrement,
                child: const Icon(Icons.exposure_neg_1)),
            Observer(
              builder: (_) => Text(
                '${_store.sum1}',
                style: const TextStyle(fontSize: 40),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amberAccent,
        onPressed: _store.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
