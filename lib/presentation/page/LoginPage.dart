import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poc_flutter/domain/login/login_bloc.dart';
import 'package:poc_flutter/presentation/widget/LoginForm.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if (state is LoginInitial) {
            return Column(
              children: <Widget>[
                const LoginForm(),
                ElevatedButton(
                  onPressed: () { context.read<LoginBloc>().add(const LoginSubmitted()); },
                  child: const Text('Login')
                )
              ],
            );
          }
          if (state is LoginLoading) {
            return Column(
              children: <Widget>[
                const LoginForm(),
                ElevatedButton(
                  onPressed: () { print('login pressed'); },
                  child: const CircularProgressIndicator(color: Colors.white)
                )
              ],
            );
          }
          throw 'something went wrong';
        }
      )
    );
  }
}
