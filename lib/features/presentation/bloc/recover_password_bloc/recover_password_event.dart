part of 'recover_password_bloc.dart';

@freezed
abstract class RecoverPasswordEvent with _$RecoverPasswordEvent {
  const factory RecoverPasswordEvent.submitEmail(final String email) = RecoverPasswordSubmitEmail;
}
