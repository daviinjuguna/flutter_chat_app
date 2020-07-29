part of 'register_bloc.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent{
  const factory RegisterEvent.nameChanged(final String name) = RegisterNameChanged;
  const factory RegisterEvent.emailChanged(final String email) = RegisterEmailChanged;
  const factory RegisterEvent.passwordChanged(final String password) = RegisterPasswordChanged;
  const factory RegisterEvent.registerSubmitted(final String email,final String password,final String name, final String passwordConfirmed) = RegisterSubmitted;
}