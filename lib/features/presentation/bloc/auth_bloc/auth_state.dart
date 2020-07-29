part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState{
  const factory AuthState.authInitial() = _AuthInitial;
  const factory AuthState.authSuccess() = _AuthSuccess;
  const factory AuthState.authFailure() = _AuthFailure;
  
}
