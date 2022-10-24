import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poc_flutter/data/model/navbar_screen.dart';
import 'package:poc_flutter/domain/navbar/navbar_bloc.dart';
import 'package:poc_flutter/presentation/page/products_page.dart';
import 'package:poc_flutter/presentation/page/profile_page.dart';
import 'package:poc_flutter/presentation/widget/navbar.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavbarBloc, NavbarState>(
      buildWhen: 
        (previous, current) => previous.screen != current.screen,
      builder: (context, state) {
        if (state.screen == NavbarScreen.products) {
          return const Scaffold(
            bottomNavigationBar: AppNavigationBar(),
            body: ProductsPage(),
          );
        }
        if (state.screen == NavbarScreen.profile) {
          return const Scaffold(
            bottomNavigationBar: AppNavigationBar(),
            body: ProfilePage(),
          );
        }
        throw 'something went wrong';
      }
    );
  }
}
