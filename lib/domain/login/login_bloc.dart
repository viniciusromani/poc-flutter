import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';


enum FieldStatus { valid, invalid, unknown }

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginInitial()) {
    on<LoginUsernameChanged>(_onUsernameChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginSubmitted>(_onSubmittedChanged);
  }

  void _onUsernameChanged(LoginUsernameChanged event, Emitter<LoginState> emit) {
    // TODO: validate input
    emit(
      LoginInputChanged(event.username, state.password)
    );
  }
  void _onPasswordChanged(LoginPasswordChanged event, Emitter<LoginState> emit) {
    // TODO: validate input
    emit(
      LoginInputChanged(state.username, event.password)
    );
  }
  void _onSubmittedChanged(LoginSubmitted event, Emitter<LoginState> emit) async {
    emit(const LoginLoading());

    // final result = await _login();
    // emit(
    //   result ?
    //     const LoginSuccessfull():
    //     const LoginFailed()
    // );
  }

  // TODO: this should be moved to repository
  Future<bool> _login() async {
    try {
      return Future.delayed(
        const Duration(seconds: 2),
        () => true
      );
    } catch (_) {
      return false;
    }
  }
}
