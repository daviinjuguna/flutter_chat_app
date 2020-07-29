part of 'change_password_bloc.dart';

@freezed
abstract class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.onPinChanged(final int pin) = ChangedPasswordOnPinChanged;
  const factory ChangePasswordEvent.onPasswordChanged(final String password) = ChangedPasswordOnPasswordChanged;
  const factory ChangePasswordEvent.submit(final int pin, final String password) = ChangePasswordSubmit;
}
