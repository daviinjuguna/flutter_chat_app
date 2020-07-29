part of 'register_bloc.dart';

@freezed
abstract class RegisterState with _$RegisterState{
  const factory RegisterState({
    @required bool isNameValid,
    @required bool isEmailValid,
    @required bool isPasswordValid,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
  }) = _RegisterState;

  factory RegisterState.initial() =>
    RegisterState(
      isNameValid: true,
      isEmailValid: true,
      isPasswordValid: true,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
  );

   factory RegisterState.loading() =>
    RegisterState(
      isNameValid: true,
      isEmailValid: true,
      isPasswordValid: true,
      isSubmitting: true,
      isSuccess: false,
      isFailure: false,
  );

  factory RegisterState.failure() =>
    RegisterState(
      isNameValid: true,
      isEmailValid: true,
      isPasswordValid: true,
      isSubmitting: false,
      isSuccess: false,
      isFailure: true,
  );

  factory RegisterState.success() =>
    RegisterState(
      isNameValid: true,
      isEmailValid: true,
      isPasswordValid: true,
      isSubmitting: false,
      isSuccess: true,
      isFailure: false,
  );

}