import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poc_flutter/data/model/navbar_screen.dart';
import 'package:poc_flutter/domain/navbar/navbar_bloc.dart';
import 'package:poc_flutter/presentation/page/expenses_page.dart';
import 'package:poc_flutter/presentation/page/reader_page.dart';
import 'package:poc_flutter/presentation/widget/navbar.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavbarBloc, NavbarState>(
      buildWhen: 
        (previous, current) => previous.screen != current.screen,
      builder: (context, state) {
        if (state.screen == NavbarScreen.reader) {
          return const Scaffold(
            bottomNavigationBar: AppNavigationBar(),
            body: ReaderPage(),
          );
        }
        if (state.screen == NavbarScreen.expenses) {
          return const Scaffold(
            bottomNavigationBar: AppNavigationBar(),
            body: ExpensesPage(),
          );
        }
        throw 'something went wrong';
      }
    );
  }
}
