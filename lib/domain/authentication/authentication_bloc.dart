import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:poc_flutter/data/model/user.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';


enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(const AuthenticationState.unknown()) {
    on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
  }

  void _onAuthenticationStatusChanged(
    AuthenticationStatusChanged event, 
    Emitter<AuthenticationState> emit
  ) async {
    switch (event.status) {
      case AuthenticationStatus.authenticated:
        final user = await _getUser();
        return emit(
          user != null ? 
            AuthenticationState.authenticated(user):
            AuthenticationState.unauthenticated()
        );
      case AuthenticationStatus.unknown:
        return emit(const AuthenticationState.unknown());
      case AuthenticationStatus.unauthenticated:
        return emit(const AuthenticationState.unauthenticated());
    }
  }

  // TODO: This should be moved to repository
  Future<User?> _getUser() async {
    try {
      return Future.delayed(
        const Duration(seconds: 2), 
        () => const User(id: 'id', name: 'name')
      );
    } catch (_) {
      return null;
    }
  }
}
