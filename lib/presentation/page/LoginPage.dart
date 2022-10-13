import 'package:flutter/material.dart';
import 'package:poc_flutter/presentation/widget/LoginForm.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: const LoginForm()
    );
  }
}
