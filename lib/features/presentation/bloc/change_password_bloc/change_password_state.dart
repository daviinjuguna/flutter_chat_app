part of 'change_password_bloc.dart';

@freezed
abstract class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    @required bool isPinValid,
    @required bool isPasswordValid,
    @required bool isSuccess,
    @required bool isFailure,
  }) = _ChangePasswordState;

  factory ChangePasswordState.initial() =>
    ChangePasswordState(
      isPinValid: true,
      isPasswordValid: true,
      isSuccess: false,
      isFailure: false
    );

    factory ChangePasswordState.success() =>
    ChangePasswordState(
      isPinValid: true,
      isPasswordValid: true,
      isSuccess: true,
      isFailure: false
    );

    factory ChangePasswordState.failure() =>
    ChangePasswordState(
      isPinValid: true,
      isPasswordValid: true,
      isSuccess: false,
      isFailure: true
    );
}