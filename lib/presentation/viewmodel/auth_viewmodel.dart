import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cajueiro_fala_app/presentation/viewmodel/state/auth_state.dart';

class LoginViewModel extends Cubit<LoginState> {
  LoginViewModel() : super(const LoginState.initial());

  void login({
    required String phoneNumber,
  }) {
    emit(const LoginState.loading());

    // Simulate a login process
    Future.delayed(const Duration(seconds: 2), () {
      emit(const LoginState.success());
    });
  }

  void updatePhoneNumber(String phoneNumber) {
    emit(LoginState.ready(phoneNumber: phoneNumber));
  }

  void sendSMS() {
    emit(const LoginState.sendSMS());
  }

  void sendSMSCode() {
    emit(const LoginState.sendSMSCode());
  }
}
