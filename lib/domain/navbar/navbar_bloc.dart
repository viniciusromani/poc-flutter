import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:poc_flutter/data/model/navbar_screen.dart';

part 'navbar_event.dart';
part 'navbar_state.dart';

class NavbarBloc extends Bloc<NavbarEvent, NavbarState> {
  NavbarBloc(): super(const NavbarCurrentState(NavbarScreen.reader)) {
    on<NavbarScreenChanged>(_onNavbarScreenChanged);
  }

  void _onNavbarScreenChanged(NavbarScreenChanged event, Emitter<NavbarState> emit) {
    final NavbarScreen screen;
    switch (event.index) {
      case 0: screen = NavbarScreen.reader; break;
      case 1: screen = NavbarScreen.expenses; break;
      default: screen = NavbarScreen.reader;
    }
    
    emit(
      NavbarCurrentState(screen)
    );
  } 
}
