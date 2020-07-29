part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailChanged(final String email) = LoginEmailChanged;
  const factory LoginEvent.passwordChanged(final String password) = LoginPasswordChanged;
  const factory LoginEvent.loginPressed(final String email,final String password) = LoginPressed;
}
