// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  AuthStarted started() {
    return const AuthStarted();
  }

// ignore: unused_element
  AuthLoggedIn loggedIn() {
    return const AuthLoggedIn();
  }

// ignore: unused_element
  AuthLoggedOut loggedOut() {
    return const AuthLoggedOut();
  }

// ignore: unused_element
  RefreshToken refreshToken() {
    return const RefreshToken();
  }
}

// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loggedIn(),
    @required Result loggedOut(),
    @required Result refreshToken(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result loggedIn(),
    Result loggedOut(),
    Result refreshToken(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(AuthStarted value),
    @required Result loggedIn(AuthLoggedIn value),
    @required Result loggedOut(AuthLoggedOut value),
    @required Result refreshToken(RefreshToken value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(AuthStarted value),
    Result loggedIn(AuthLoggedIn value),
    Result loggedOut(AuthLoggedOut value),
    Result refreshToken(RefreshToken value),
    @required Result orElse(),
  });
}

abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

abstract class $AuthStartedCopyWith<$Res> {
  factory $AuthStartedCopyWith(
          AuthStarted value, $Res Function(AuthStarted) then) =
      _$AuthStartedCopyWithImpl<$Res>;
}

class _$AuthStartedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthStartedCopyWith<$Res> {
  _$AuthStartedCopyWithImpl(
      AuthStarted _value, $Res Function(AuthStarted) _then)
      : super(_value, (v) => _then(v as AuthStarted));

  @override
  AuthStarted get _value => super._value as AuthStarted;
}

class _$AuthStarted with DiagnosticableTreeMixin implements AuthStarted {
  const _$AuthStarted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loggedIn(),
    @required Result loggedOut(),
    @required Result refreshToken(),
  }) {
    assert(started != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    assert(refreshToken != null);
    return started();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result loggedIn(),
    Result loggedOut(),
    Result refreshToken(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(AuthStarted value),
    @required Result loggedIn(AuthLoggedIn value),
    @required Result loggedOut(AuthLoggedOut value),
    @required Result refreshToken(RefreshToken value),
  }) {
    assert(started != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    assert(refreshToken != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(AuthStarted value),
    Result loggedIn(AuthLoggedIn value),
    Result loggedOut(AuthLoggedOut value),
    Result refreshToken(RefreshToken value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class AuthStarted implements AuthEvent {
  const factory AuthStarted() = _$AuthStarted;
}

abstract class $AuthLoggedInCopyWith<$Res> {
  factory $AuthLoggedInCopyWith(
          AuthLoggedIn value, $Res Function(AuthLoggedIn) then) =
      _$AuthLoggedInCopyWithImpl<$Res>;
}

class _$AuthLoggedInCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthLoggedInCopyWith<$Res> {
  _$AuthLoggedInCopyWithImpl(
      AuthLoggedIn _value, $Res Function(AuthLoggedIn) _then)
      : super(_value, (v) => _then(v as AuthLoggedIn));

  @override
  AuthLoggedIn get _value => super._value as AuthLoggedIn;
}

class _$AuthLoggedIn with DiagnosticableTreeMixin implements AuthLoggedIn {
  const _$AuthLoggedIn();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.loggedIn()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthEvent.loggedIn'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthLoggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loggedIn(),
    @required Result loggedOut(),
    @required Result refreshToken(),
  }) {
    assert(started != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    assert(refreshToken != null);
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result loggedIn(),
    Result loggedOut(),
    Result refreshToken(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(AuthStarted value),
    @required Result loggedIn(AuthLoggedIn value),
    @required Result loggedOut(AuthLoggedOut value),
    @required Result refreshToken(RefreshToken value),
  }) {
    assert(started != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    assert(refreshToken != null);
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(AuthStarted value),
    Result loggedIn(AuthLoggedIn value),
    Result loggedOut(AuthLoggedOut value),
    Result refreshToken(RefreshToken value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class AuthLoggedIn implements AuthEvent {
  const factory AuthLoggedIn() = _$AuthLoggedIn;
}

abstract class $AuthLoggedOutCopyWith<$Res> {
  factory $AuthLoggedOutCopyWith(
          AuthLoggedOut value, $Res Function(AuthLoggedOut) then) =
      _$AuthLoggedOutCopyWithImpl<$Res>;
}

class _$AuthLoggedOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthLoggedOutCopyWith<$Res> {
  _$AuthLoggedOutCopyWithImpl(
      AuthLoggedOut _value, $Res Function(AuthLoggedOut) _then)
      : super(_value, (v) => _then(v as AuthLoggedOut));

  @override
  AuthLoggedOut get _value => super._value as AuthLoggedOut;
}

class _$AuthLoggedOut with DiagnosticableTreeMixin implements AuthLoggedOut {
  const _$AuthLoggedOut();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.loggedOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthEvent.loggedOut'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthLoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loggedIn(),
    @required Result loggedOut(),
    @required Result refreshToken(),
  }) {
    assert(started != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    assert(refreshToken != null);
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result loggedIn(),
    Result loggedOut(),
    Result refreshToken(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(AuthStarted value),
    @required Result loggedIn(AuthLoggedIn value),
    @required Result loggedOut(AuthLoggedOut value),
    @required Result refreshToken(RefreshToken value),
  }) {
    assert(started != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    assert(refreshToken != null);
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(AuthStarted value),
    Result loggedIn(AuthLoggedIn value),
    Result loggedOut(AuthLoggedOut value),
    Result refreshToken(RefreshToken value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class AuthLoggedOut implements AuthEvent {
  const factory AuthLoggedOut() = _$AuthLoggedOut;
}

abstract class $RefreshTokenCopyWith<$Res> {
  factory $RefreshTokenCopyWith(
          RefreshToken value, $Res Function(RefreshToken) then) =
      _$RefreshTokenCopyWithImpl<$Res>;
}

class _$RefreshTokenCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $RefreshTokenCopyWith<$Res> {
  _$RefreshTokenCopyWithImpl(
      RefreshToken _value, $Res Function(RefreshToken) _then)
      : super(_value, (v) => _then(v as RefreshToken));

  @override
  RefreshToken get _value => super._value as RefreshToken;
}

class _$RefreshToken with DiagnosticableTreeMixin implements RefreshToken {
  const _$RefreshToken();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.refreshToken()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthEvent.refreshToken'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RefreshToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result loggedIn(),
    @required Result loggedOut(),
    @required Result refreshToken(),
  }) {
    assert(started != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    assert(refreshToken != null);
    return refreshToken();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result loggedIn(),
    Result loggedOut(),
    Result refreshToken(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshToken != null) {
      return refreshToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(AuthStarted value),
    @required Result loggedIn(AuthLoggedIn value),
    @required Result loggedOut(AuthLoggedOut value),
    @required Result refreshToken(RefreshToken value),
  }) {
    assert(started != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    assert(refreshToken != null);
    return refreshToken(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(AuthStarted value),
    Result loggedIn(AuthLoggedIn value),
    Result loggedOut(AuthLoggedOut value),
    Result refreshToken(RefreshToken value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshToken != null) {
      return refreshToken(this);
    }
    return orElse();
  }
}

abstract class RefreshToken implements AuthEvent {
  const factory RefreshToken() = _$RefreshToken;
}

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _AuthInitial authInitial() {
    return const _AuthInitial();
  }

// ignore: unused_element
  _AuthSuccess authSuccess() {
    return const _AuthSuccess();
  }

// ignore: unused_element
  _AuthLoggedOut authLoggedOut() {
    return const _AuthLoggedOut();
  }

// ignore: unused_element
  _Error error(String error, dynamic message) {
    return _Error(
      error,
      message,
    );
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authInitial(),
    @required Result authSuccess(),
    @required Result authLoggedOut(),
    @required Result error(String error, dynamic message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authInitial(),
    Result authSuccess(),
    Result authLoggedOut(),
    Result error(String error, dynamic message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authInitial(_AuthInitial value),
    @required Result authSuccess(_AuthSuccess value),
    @required Result authLoggedOut(_AuthLoggedOut value),
    @required Result error(_Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authInitial(_AuthInitial value),
    Result authSuccess(_AuthSuccess value),
    Result authLoggedOut(_AuthLoggedOut value),
    Result error(_Error value),
    @required Result orElse(),
  });
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

abstract class _$AuthInitialCopyWith<$Res> {
  factory _$AuthInitialCopyWith(
          _AuthInitial value, $Res Function(_AuthInitial) then) =
      __$AuthInitialCopyWithImpl<$Res>;
}

class __$AuthInitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthInitialCopyWith<$Res> {
  __$AuthInitialCopyWithImpl(
      _AuthInitial _value, $Res Function(_AuthInitial) _then)
      : super(_value, (v) => _then(v as _AuthInitial));

  @override
  _AuthInitial get _value => super._value as _AuthInitial;
}

class _$_AuthInitial with DiagnosticableTreeMixin implements _AuthInitial {
  const _$_AuthInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authInitial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.authInitial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authInitial(),
    @required Result authSuccess(),
    @required Result authLoggedOut(),
    @required Result error(String error, dynamic message),
  }) {
    assert(authInitial != null);
    assert(authSuccess != null);
    assert(authLoggedOut != null);
    assert(error != null);
    return authInitial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authInitial(),
    Result authSuccess(),
    Result authLoggedOut(),
    Result error(String error, dynamic message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authInitial != null) {
      return authInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authInitial(_AuthInitial value),
    @required Result authSuccess(_AuthSuccess value),
    @required Result authLoggedOut(_AuthLoggedOut value),
    @required Result error(_Error value),
  }) {
    assert(authInitial != null);
    assert(authSuccess != null);
    assert(authLoggedOut != null);
    assert(error != null);
    return authInitial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authInitial(_AuthInitial value),
    Result authSuccess(_AuthSuccess value),
    Result authLoggedOut(_AuthLoggedOut value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authInitial != null) {
      return authInitial(this);
    }
    return orElse();
  }
}

abstract class _AuthInitial implements AuthState {
  const factory _AuthInitial() = _$_AuthInitial;
}

abstract class _$AuthSuccessCopyWith<$Res> {
  factory _$AuthSuccessCopyWith(
          _AuthSuccess value, $Res Function(_AuthSuccess) then) =
      __$AuthSuccessCopyWithImpl<$Res>;
}

class __$AuthSuccessCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthSuccessCopyWith<$Res> {
  __$AuthSuccessCopyWithImpl(
      _AuthSuccess _value, $Res Function(_AuthSuccess) _then)
      : super(_value, (v) => _then(v as _AuthSuccess));

  @override
  _AuthSuccess get _value => super._value as _AuthSuccess;
}

class _$_AuthSuccess with DiagnosticableTreeMixin implements _AuthSuccess {
  const _$_AuthSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.authSuccess'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authInitial(),
    @required Result authSuccess(),
    @required Result authLoggedOut(),
    @required Result error(String error, dynamic message),
  }) {
    assert(authInitial != null);
    assert(authSuccess != null);
    assert(authLoggedOut != null);
    assert(error != null);
    return authSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authInitial(),
    Result authSuccess(),
    Result authLoggedOut(),
    Result error(String error, dynamic message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authSuccess != null) {
      return authSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authInitial(_AuthInitial value),
    @required Result authSuccess(_AuthSuccess value),
    @required Result authLoggedOut(_AuthLoggedOut value),
    @required Result error(_Error value),
  }) {
    assert(authInitial != null);
    assert(authSuccess != null);
    assert(authLoggedOut != null);
    assert(error != null);
    return authSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authInitial(_AuthInitial value),
    Result authSuccess(_AuthSuccess value),
    Result authLoggedOut(_AuthLoggedOut value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authSuccess != null) {
      return authSuccess(this);
    }
    return orElse();
  }
}

abstract class _AuthSuccess implements AuthState {
  const factory _AuthSuccess() = _$_AuthSuccess;
}

abstract class _$AuthLoggedOutCopyWith<$Res> {
  factory _$AuthLoggedOutCopyWith(
          _AuthLoggedOut value, $Res Function(_AuthLoggedOut) then) =
      __$AuthLoggedOutCopyWithImpl<$Res>;
}

class __$AuthLoggedOutCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthLoggedOutCopyWith<$Res> {
  __$AuthLoggedOutCopyWithImpl(
      _AuthLoggedOut _value, $Res Function(_AuthLoggedOut) _then)
      : super(_value, (v) => _then(v as _AuthLoggedOut));

  @override
  _AuthLoggedOut get _value => super._value as _AuthLoggedOut;
}

class _$_AuthLoggedOut with DiagnosticableTreeMixin implements _AuthLoggedOut {
  const _$_AuthLoggedOut();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authLoggedOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.authLoggedOut'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthLoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authInitial(),
    @required Result authSuccess(),
    @required Result authLoggedOut(),
    @required Result error(String error, dynamic message),
  }) {
    assert(authInitial != null);
    assert(authSuccess != null);
    assert(authLoggedOut != null);
    assert(error != null);
    return authLoggedOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authInitial(),
    Result authSuccess(),
    Result authLoggedOut(),
    Result error(String error, dynamic message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authLoggedOut != null) {
      return authLoggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authInitial(_AuthInitial value),
    @required Result authSuccess(_AuthSuccess value),
    @required Result authLoggedOut(_AuthLoggedOut value),
    @required Result error(_Error value),
  }) {
    assert(authInitial != null);
    assert(authSuccess != null);
    assert(authLoggedOut != null);
    assert(error != null);
    return authLoggedOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authInitial(_AuthInitial value),
    Result authSuccess(_AuthSuccess value),
    Result authLoggedOut(_AuthLoggedOut value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authLoggedOut != null) {
      return authLoggedOut(this);
    }
    return orElse();
  }
}

abstract class _AuthLoggedOut implements AuthState {
  const factory _AuthLoggedOut() = _$_AuthLoggedOut;
}

abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String error, dynamic message});
}

class __$ErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object error = freezed,
    Object message = freezed,
  }) {
    return _then(_Error(
      error == freezed ? _value.error : error as String,
      message == freezed ? _value.message : message,
    ));
  }
}

class _$_Error with DiagnosticableTreeMixin implements _Error {
  const _$_Error(this.error, this.message)
      : assert(error != null),
        assert(message != null);

  @override
  final String error;
  @override
  final dynamic message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.error(error: $error, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.error'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(message);

  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authInitial(),
    @required Result authSuccess(),
    @required Result authLoggedOut(),
    @required Result error(String error, dynamic message),
  }) {
    assert(authInitial != null);
    assert(authSuccess != null);
    assert(authLoggedOut != null);
    assert(error != null);
    return error(this.error, message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authInitial(),
    Result authSuccess(),
    Result authLoggedOut(),
    Result error(String error, dynamic message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authInitial(_AuthInitial value),
    @required Result authSuccess(_AuthSuccess value),
    @required Result authLoggedOut(_AuthLoggedOut value),
    @required Result error(_Error value),
  }) {
    assert(authInitial != null);
    assert(authSuccess != null);
    assert(authLoggedOut != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authInitial(_AuthInitial value),
    Result authSuccess(_AuthSuccess value),
    Result authLoggedOut(_AuthLoggedOut value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(String error, dynamic message) = _$_Error;

  String get error;
  dynamic get message;
  _$ErrorCopyWith<_Error> get copyWith;
}
