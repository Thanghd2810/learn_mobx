import 'package:flutter/material.dart';
import 'package:learn_mobx/screens/home_screen.dart';

import '../dice_screen/dice_screen.dart';
import '../login_screen/login_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _currentIndex = 0;

  final List _screen = [
    HomeScreen(
      title: 'Learn MOBX'.toUpperCase(),
    ),
    DiceScreen(),
    LoginScreen(),
  ];

  final Map<String, IconData> _icon = {
    'Home': Icons.home,
    'Game': Icons.games_outlined,
    'Login': Icons.featured_play_list,
  };
  void ButtonPress(value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screen[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.amberAccent,
          items: _icon
              .map((title, icon) {
                return MapEntry(
                    title,
                    BottomNavigationBarItem(
                        icon: Icon(icon, size: 20), label: title));
              })
              .values
              .toList(),
          currentIndex: _currentIndex,
          onTap: ButtonPress,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.black12,
        ));
  }
}
