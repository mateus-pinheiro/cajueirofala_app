import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginStateInitial;
  const factory LoginState.loading() = LoginStateLoading;
  const factory LoginState.success() = LoginStateSuccess;

  const factory LoginState.ready({
    required String phoneNumber,
  }) = LoginStateReady;

  const factory LoginState.error(String message) = LoginStateError;
  const factory LoginState.sendSMS() = LoginStateSendSMS;
  const factory LoginState.sendSMSCode() = LoginStateSendSMSCode;
}
