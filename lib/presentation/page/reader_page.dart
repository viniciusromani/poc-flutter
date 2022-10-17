import 'package:flutter/material.dart';
import 'package:poc_flutter/presentation/widget/navbar.dart';

class ReaderPage extends StatelessWidget {
  const ReaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            'Welcome to the reader page',
          ),
        ],
      ),
    );
  }
}
