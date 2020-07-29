part of 'recover_password_bloc.dart';

@freezed
abstract class RecoverPasswordState with _$RecoverPasswordState{
  const factory RecoverPasswordState.initial() = _RecoverPasswordInitial;
  const factory RecoverPasswordState.success(final RecoverPassword pin) = _RecoverPasswordSuccess;
  const factory RecoverPasswordState.error(final String message) = _RecoverPasswordError;
}