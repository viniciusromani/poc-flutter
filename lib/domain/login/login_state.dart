part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  final String username;
  final String password;

  const LoginState(
    this.username, 
    this.password
  );
  
  @override
  List<Object?> get props => [username, password];
}

class LoginInitial extends LoginState {
  const LoginInitial(): super('', '');
}

class LoginInputChanged extends LoginState {
  const LoginInputChanged(
    super.username, 
    super.password
  );
}

class LoginLoading extends LoginState {
  const LoginLoading(): super('', '');
}

class LoginSuccessfull extends LoginState {
  const LoginSuccessfull(): super('', '');
}

class LoginFailed extends LoginState {
  const LoginFailed(): super('', '');
}
