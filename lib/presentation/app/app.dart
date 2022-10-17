import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poc_flutter/domain/navbar/navbar_bloc.dart';
import 'package:poc_flutter/presentation/page/expenses_page.dart';
import 'package:poc_flutter/presentation/page/root_page.dart';

class App extends StatelessWidget {
  const App({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => NavbarBloc()
        ),
      ], 
      child: MaterialApp(
        title: 'POC Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const RootPage(),
      )
    );
  }
}
