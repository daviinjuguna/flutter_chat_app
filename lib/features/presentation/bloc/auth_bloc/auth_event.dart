part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = AuthStarted;
  const factory AuthEvent.loggedIn() = AuthLoggedIn;
  const factory AuthEvent.loggedOut() = AuthLoggedOut;
}
