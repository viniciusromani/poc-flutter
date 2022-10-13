part of 'authentication_bloc.dart';

class AuthenticationState extends Equatable {
  final AuthenticationStatus status;
  final User user;

  const AuthenticationState({
    this.status = AuthenticationStatus.unknown,
    this.user = const User(id: 'a', name: 'a'),
  });

  const AuthenticationState.unknown(): 
    this();

  const AuthenticationState.authenticated(User user): 
    this(status: AuthenticationStatus.authenticated, user: user);

  const AuthenticationState.unauthenticated(): 
    this(status: AuthenticationStatus.unauthenticated);
    
  @override
  List<Object> get props => [status, user];
}