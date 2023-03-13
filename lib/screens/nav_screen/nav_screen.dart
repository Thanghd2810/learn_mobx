import 'package:flutter/material.dart';
import 'package:learn_mobx/screens/user_screen/user_screen.dart';
import 'package:learn_mobx/store/home_screen_store.dart';

import '../home_screen/home_screen.dart';
import '../post_data_screen/post_data_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List _screen = [HomeScreen(), UserScreen(), PostDataScreen()];
  int _currentIndex = 0;
  final Map<String, IconData> _icon = {
    'Home': Icons.home,
    'User': Icons.verified_user,
    'Post': Icons.post_add_outlined
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          backgroundColor: Colors.amber,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black12,
          items: _icon
              .map(
                (title, icon) => MapEntry(
                    title,
                    BottomNavigationBarItem(
                        icon: Icon(icon, size: 20), label: title)),
              )
              .values
              .toList()),
    );
  }
}
