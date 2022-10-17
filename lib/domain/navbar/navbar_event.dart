part of 'navbar_bloc.dart';

abstract class NavbarEvent extends Equatable {
  final int index;
  
  const NavbarEvent(this.index);

  @override
  List<Object> get props => [];
}

class NavbarScreenChanged extends NavbarEvent {
  const NavbarScreenChanged(super.index);

  @override
  List<Object> get props => [index];
}
