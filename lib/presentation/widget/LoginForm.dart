import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          TextField(
            key: Key('login.username'),
            decoration: InputDecoration(
              labelText: 'username',
            ),
          ),
          TextField(
            key: Key('login.password'),
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'password'
            ),
          )
        ],
      ),
    );
  }
}
