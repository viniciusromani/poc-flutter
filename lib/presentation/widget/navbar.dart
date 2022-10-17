
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poc_flutter/domain/navbar/navbar_bloc.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavbarBloc, NavbarState>(
      buildWhen: 
        (previous, current) => previous.screen != current.screen,
      builder: (context, state) {
        return NavigationBar(
          selectedIndex: state.screen.index,
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.camera), 
              label: 'Reader',
            ),
            NavigationDestination(
              icon: Icon(Icons.graphic_eq), 
              label: 'Despesas'
            ),
          ],
          onDestinationSelected: 
            (index) => 
              context
                .read<NavbarBloc>()
                .add(NavbarScreenChanged(index)),
        );
      }
    );
  } 
}
