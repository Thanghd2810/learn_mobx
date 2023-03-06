import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:learn_mobx/store/login_screen_store.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginScreenStore store = LoginScreenStore();

// @override
//   void initState() {
//     super.initState();
//     store.setupValidations();
//   }

//   @override
//   void dispose() {
//     store.dispose();
//     super.dispose();
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text(
          'login form'.toUpperCase(),
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Hind'),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Observer(
              builder: (context) => TextFormField(
                decoration: InputDecoration(
                  // errorText: store.error.username,
                  hintText: 'Pick a username',
                  label: Text('UserName'),
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12, bottom: 12),
              child: Observer(
                builder: (BuildContext context) {
                  return TextFormField(
                    // autovalidateMode: AutovalidateMode.onUserInteraction,
                    // validator: (value) {
                    //   store.validateEmail(value!);
                    //   return null;
                    // },
                    onChanged: (value) {
                      store.email = value;
                      print(store.email);
                    },
                    decoration: InputDecoration(
                      errorText: store.error.email,
                      hintText: 'Enter your email address',
                      label: Text('Email'),
                    ),
                  );
                },
              )),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12, bottom: 12),
            child: Observer(
              builder: (context) {
                return TextFormField(
                  // autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    store.validatePassword(value!);
                    return null;
                  },

                  // store.validatePassword(value)
                  onChanged: (value) {
                    store.password = value;
                    print(store.password);
                  },
                  decoration: InputDecoration(
                    errorText: store.error.password,
                    hintText: 'Set a password',
                    label: Text('Password'),
                  ),
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(8)),
            width: 100,
            height: 50,
            child: TextButton(
                onPressed: store.validateAll, child: Text('Sign In')),
          ),
        ],
      ),
    );
  }
}
