part of 'navbar_bloc.dart';

abstract class NavbarState extends Equatable {
  final NavbarScreen screen;
  
  const NavbarState(this.screen);
  
  @override
  List<Object> get props => [screen];
}

class NavbarCurrentState extends NavbarState {
  const NavbarCurrentState(super.screen);
}
