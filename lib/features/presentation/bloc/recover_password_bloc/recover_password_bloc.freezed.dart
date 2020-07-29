// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'recover_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RecoverPasswordEventTearOff {
  const _$RecoverPasswordEventTearOff();

// ignore: unused_element
  RecoverPasswordSubmitEmail submitEmail(String email) {
    return RecoverPasswordSubmitEmail(
      email,
    );
  }
}

// ignore: unused_element
const $RecoverPasswordEvent = _$RecoverPasswordEventTearOff();

mixin _$RecoverPasswordEvent {
  String get email;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitEmail(String email),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitEmail(String email),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitEmail(RecoverPasswordSubmitEmail value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitEmail(RecoverPasswordSubmitEmail value),
    @required Result orElse(),
  });

  $RecoverPasswordEventCopyWith<RecoverPasswordEvent> get copyWith;
}

abstract class $RecoverPasswordEventCopyWith<$Res> {
  factory $RecoverPasswordEventCopyWith(RecoverPasswordEvent value,
          $Res Function(RecoverPasswordEvent) then) =
      _$RecoverPasswordEventCopyWithImpl<$Res>;
  $Res call({String email});
}

class _$RecoverPasswordEventCopyWithImpl<$Res>
    implements $RecoverPasswordEventCopyWith<$Res> {
  _$RecoverPasswordEventCopyWithImpl(this._value, this._then);

  final RecoverPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(RecoverPasswordEvent) _then;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

abstract class $RecoverPasswordSubmitEmailCopyWith<$Res>
    implements $RecoverPasswordEventCopyWith<$Res> {
  factory $RecoverPasswordSubmitEmailCopyWith(RecoverPasswordSubmitEmail value,
          $Res Function(RecoverPasswordSubmitEmail) then) =
      _$RecoverPasswordSubmitEmailCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

class _$RecoverPasswordSubmitEmailCopyWithImpl<$Res>
    extends _$RecoverPasswordEventCopyWithImpl<$Res>
    implements $RecoverPasswordSubmitEmailCopyWith<$Res> {
  _$RecoverPasswordSubmitEmailCopyWithImpl(RecoverPasswordSubmitEmail _value,
      $Res Function(RecoverPasswordSubmitEmail) _then)
      : super(_value, (v) => _then(v as RecoverPasswordSubmitEmail));

  @override
  RecoverPasswordSubmitEmail get _value =>
      super._value as RecoverPasswordSubmitEmail;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(RecoverPasswordSubmitEmail(
      email == freezed ? _value.email : email as String,
    ));
  }
}

class _$RecoverPasswordSubmitEmail implements RecoverPasswordSubmitEmail {
  const _$RecoverPasswordSubmitEmail(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'RecoverPasswordEvent.submitEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RecoverPasswordSubmitEmail &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $RecoverPasswordSubmitEmailCopyWith<RecoverPasswordSubmitEmail>
      get copyWith =>
          _$RecoverPasswordSubmitEmailCopyWithImpl<RecoverPasswordSubmitEmail>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitEmail(String email),
  }) {
    assert(submitEmail != null);
    return submitEmail(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitEmail(String email),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitEmail != null) {
      return submitEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitEmail(RecoverPasswordSubmitEmail value),
  }) {
    assert(submitEmail != null);
    return submitEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitEmail(RecoverPasswordSubmitEmail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitEmail != null) {
      return submitEmail(this);
    }
    return orElse();
  }
}

abstract class RecoverPasswordSubmitEmail implements RecoverPasswordEvent {
  const factory RecoverPasswordSubmitEmail(String email) =
      _$RecoverPasswordSubmitEmail;

  @override
  String get email;
  @override
  $RecoverPasswordSubmitEmailCopyWith<RecoverPasswordSubmitEmail> get copyWith;
}

class _$RecoverPasswordStateTearOff {
  const _$RecoverPasswordStateTearOff();

// ignore: unused_element
  _RecoverPasswordInitial initial() {
    return const _RecoverPasswordInitial();
  }

// ignore: unused_element
  _RecoverPasswordSuccess success(RecoverPassword pin) {
    return _RecoverPasswordSuccess(
      pin,
    );
  }

// ignore: unused_element
  _RecoverPasswordError error(String message) {
    return _RecoverPasswordError(
      message,
    );
  }
}

// ignore: unused_element
const $RecoverPasswordState = _$RecoverPasswordStateTearOff();

mixin _$RecoverPasswordState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(RecoverPassword pin),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(RecoverPassword pin),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_RecoverPasswordInitial value),
    @required Result success(_RecoverPasswordSuccess value),
    @required Result error(_RecoverPasswordError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_RecoverPasswordInitial value),
    Result success(_RecoverPasswordSuccess value),
    Result error(_RecoverPasswordError value),
    @required Result orElse(),
  });
}

abstract class $RecoverPasswordStateCopyWith<$Res> {
  factory $RecoverPasswordStateCopyWith(RecoverPasswordState value,
          $Res Function(RecoverPasswordState) then) =
      _$RecoverPasswordStateCopyWithImpl<$Res>;
}

class _$RecoverPasswordStateCopyWithImpl<$Res>
    implements $RecoverPasswordStateCopyWith<$Res> {
  _$RecoverPasswordStateCopyWithImpl(this._value, this._then);

  final RecoverPasswordState _value;
  // ignore: unused_field
  final $Res Function(RecoverPasswordState) _then;
}

abstract class _$RecoverPasswordInitialCopyWith<$Res> {
  factory _$RecoverPasswordInitialCopyWith(_RecoverPasswordInitial value,
          $Res Function(_RecoverPasswordInitial) then) =
      __$RecoverPasswordInitialCopyWithImpl<$Res>;
}

class __$RecoverPasswordInitialCopyWithImpl<$Res>
    extends _$RecoverPasswordStateCopyWithImpl<$Res>
    implements _$RecoverPasswordInitialCopyWith<$Res> {
  __$RecoverPasswordInitialCopyWithImpl(_RecoverPasswordInitial _value,
      $Res Function(_RecoverPasswordInitial) _then)
      : super(_value, (v) => _then(v as _RecoverPasswordInitial));

  @override
  _RecoverPasswordInitial get _value => super._value as _RecoverPasswordInitial;
}

class _$_RecoverPasswordInitial implements _RecoverPasswordInitial {
  const _$_RecoverPasswordInitial();

  @override
  String toString() {
    return 'RecoverPasswordState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RecoverPasswordInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(RecoverPassword pin),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(RecoverPassword pin),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_RecoverPasswordInitial value),
    @required Result success(_RecoverPasswordSuccess value),
    @required Result error(_RecoverPasswordError value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_RecoverPasswordInitial value),
    Result success(_RecoverPasswordSuccess value),
    Result error(_RecoverPasswordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _RecoverPasswordInitial implements RecoverPasswordState {
  const factory _RecoverPasswordInitial() = _$_RecoverPasswordInitial;
}

abstract class _$RecoverPasswordSuccessCopyWith<$Res> {
  factory _$RecoverPasswordSuccessCopyWith(_RecoverPasswordSuccess value,
          $Res Function(_RecoverPasswordSuccess) then) =
      __$RecoverPasswordSuccessCopyWithImpl<$Res>;
  $Res call({RecoverPassword pin});
}

class __$RecoverPasswordSuccessCopyWithImpl<$Res>
    extends _$RecoverPasswordStateCopyWithImpl<$Res>
    implements _$RecoverPasswordSuccessCopyWith<$Res> {
  __$RecoverPasswordSuccessCopyWithImpl(_RecoverPasswordSuccess _value,
      $Res Function(_RecoverPasswordSuccess) _then)
      : super(_value, (v) => _then(v as _RecoverPasswordSuccess));

  @override
  _RecoverPasswordSuccess get _value => super._value as _RecoverPasswordSuccess;

  @override
  $Res call({
    Object pin = freezed,
  }) {
    return _then(_RecoverPasswordSuccess(
      pin == freezed ? _value.pin : pin as RecoverPassword,
    ));
  }
}

class _$_RecoverPasswordSuccess implements _RecoverPasswordSuccess {
  const _$_RecoverPasswordSuccess(this.pin) : assert(pin != null);

  @override
  final RecoverPassword pin;

  @override
  String toString() {
    return 'RecoverPasswordState.success(pin: $pin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecoverPasswordSuccess &&
            (identical(other.pin, pin) ||
                const DeepCollectionEquality().equals(other.pin, pin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pin);

  @override
  _$RecoverPasswordSuccessCopyWith<_RecoverPasswordSuccess> get copyWith =>
      __$RecoverPasswordSuccessCopyWithImpl<_RecoverPasswordSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(RecoverPassword pin),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return success(pin);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(RecoverPassword pin),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_RecoverPasswordInitial value),
    @required Result success(_RecoverPasswordSuccess value),
    @required Result error(_RecoverPasswordError value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_RecoverPasswordInitial value),
    Result success(_RecoverPasswordSuccess value),
    Result error(_RecoverPasswordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _RecoverPasswordSuccess implements RecoverPasswordState {
  const factory _RecoverPasswordSuccess(RecoverPassword pin) =
      _$_RecoverPasswordSuccess;

  RecoverPassword get pin;
  _$RecoverPasswordSuccessCopyWith<_RecoverPasswordSuccess> get copyWith;
}

abstract class _$RecoverPasswordErrorCopyWith<$Res> {
  factory _$RecoverPasswordErrorCopyWith(_RecoverPasswordError value,
          $Res Function(_RecoverPasswordError) then) =
      __$RecoverPasswordErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$RecoverPasswordErrorCopyWithImpl<$Res>
    extends _$RecoverPasswordStateCopyWithImpl<$Res>
    implements _$RecoverPasswordErrorCopyWith<$Res> {
  __$RecoverPasswordErrorCopyWithImpl(
      _RecoverPasswordError _value, $Res Function(_RecoverPasswordError) _then)
      : super(_value, (v) => _then(v as _RecoverPasswordError));

  @override
  _RecoverPasswordError get _value => super._value as _RecoverPasswordError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_RecoverPasswordError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_RecoverPasswordError implements _RecoverPasswordError {
  const _$_RecoverPasswordError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'RecoverPasswordState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecoverPasswordError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$RecoverPasswordErrorCopyWith<_RecoverPasswordError> get copyWith =>
      __$RecoverPasswordErrorCopyWithImpl<_RecoverPasswordError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(RecoverPassword pin),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(RecoverPassword pin),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_RecoverPasswordInitial value),
    @required Result success(_RecoverPasswordSuccess value),
    @required Result error(_RecoverPasswordError value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_RecoverPasswordInitial value),
    Result success(_RecoverPasswordSuccess value),
    Result error(_RecoverPasswordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _RecoverPasswordError implements RecoverPasswordState {
  const factory _RecoverPasswordError(String message) = _$_RecoverPasswordError;

  String get message;
  _$RecoverPasswordErrorCopyWith<_RecoverPasswordError> get copyWith;
}
