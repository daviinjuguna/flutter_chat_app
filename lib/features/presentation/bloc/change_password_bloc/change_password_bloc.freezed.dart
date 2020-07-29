// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'change_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ChangePasswordEventTearOff {
  const _$ChangePasswordEventTearOff();

// ignore: unused_element
  ChangedPasswordOnPinChanged onPinChanged(int pin) {
    return ChangedPasswordOnPinChanged(
      pin,
    );
  }

// ignore: unused_element
  ChangedPasswordOnPasswordChanged onPasswordChanged(String password) {
    return ChangedPasswordOnPasswordChanged(
      password,
    );
  }

// ignore: unused_element
  ChangePasswordSubmit submit(int pin, String password) {
    return ChangePasswordSubmit(
      pin,
      password,
    );
  }
}

// ignore: unused_element
const $ChangePasswordEvent = _$ChangePasswordEventTearOff();

mixin _$ChangePasswordEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onPinChanged(int pin),
    @required Result onPasswordChanged(String password),
    @required Result submit(int pin, String password),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onPinChanged(int pin),
    Result onPasswordChanged(String password),
    Result submit(int pin, String password),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onPinChanged(ChangedPasswordOnPinChanged value),
    @required Result onPasswordChanged(ChangedPasswordOnPasswordChanged value),
    @required Result submit(ChangePasswordSubmit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onPinChanged(ChangedPasswordOnPinChanged value),
    Result onPasswordChanged(ChangedPasswordOnPasswordChanged value),
    Result submit(ChangePasswordSubmit value),
    @required Result orElse(),
  });
}

abstract class $ChangePasswordEventCopyWith<$Res> {
  factory $ChangePasswordEventCopyWith(
          ChangePasswordEvent value, $Res Function(ChangePasswordEvent) then) =
      _$ChangePasswordEventCopyWithImpl<$Res>;
}

class _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ChangePasswordEventCopyWith<$Res> {
  _$ChangePasswordEventCopyWithImpl(this._value, this._then);

  final ChangePasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordEvent) _then;
}

abstract class $ChangedPasswordOnPinChangedCopyWith<$Res> {
  factory $ChangedPasswordOnPinChangedCopyWith(
          ChangedPasswordOnPinChanged value,
          $Res Function(ChangedPasswordOnPinChanged) then) =
      _$ChangedPasswordOnPinChangedCopyWithImpl<$Res>;
  $Res call({int pin});
}

class _$ChangedPasswordOnPinChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ChangedPasswordOnPinChangedCopyWith<$Res> {
  _$ChangedPasswordOnPinChangedCopyWithImpl(ChangedPasswordOnPinChanged _value,
      $Res Function(ChangedPasswordOnPinChanged) _then)
      : super(_value, (v) => _then(v as ChangedPasswordOnPinChanged));

  @override
  ChangedPasswordOnPinChanged get _value =>
      super._value as ChangedPasswordOnPinChanged;

  @override
  $Res call({
    Object pin = freezed,
  }) {
    return _then(ChangedPasswordOnPinChanged(
      pin == freezed ? _value.pin : pin as int,
    ));
  }
}

class _$ChangedPasswordOnPinChanged implements ChangedPasswordOnPinChanged {
  const _$ChangedPasswordOnPinChanged(this.pin) : assert(pin != null);

  @override
  final int pin;

  @override
  String toString() {
    return 'ChangePasswordEvent.onPinChanged(pin: $pin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangedPasswordOnPinChanged &&
            (identical(other.pin, pin) ||
                const DeepCollectionEquality().equals(other.pin, pin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pin);

  @override
  $ChangedPasswordOnPinChangedCopyWith<ChangedPasswordOnPinChanged>
      get copyWith => _$ChangedPasswordOnPinChangedCopyWithImpl<
          ChangedPasswordOnPinChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onPinChanged(int pin),
    @required Result onPasswordChanged(String password),
    @required Result submit(int pin, String password),
  }) {
    assert(onPinChanged != null);
    assert(onPasswordChanged != null);
    assert(submit != null);
    return onPinChanged(pin);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onPinChanged(int pin),
    Result onPasswordChanged(String password),
    Result submit(int pin, String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onPinChanged != null) {
      return onPinChanged(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onPinChanged(ChangedPasswordOnPinChanged value),
    @required Result onPasswordChanged(ChangedPasswordOnPasswordChanged value),
    @required Result submit(ChangePasswordSubmit value),
  }) {
    assert(onPinChanged != null);
    assert(onPasswordChanged != null);
    assert(submit != null);
    return onPinChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onPinChanged(ChangedPasswordOnPinChanged value),
    Result onPasswordChanged(ChangedPasswordOnPasswordChanged value),
    Result submit(ChangePasswordSubmit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onPinChanged != null) {
      return onPinChanged(this);
    }
    return orElse();
  }
}

abstract class ChangedPasswordOnPinChanged implements ChangePasswordEvent {
  const factory ChangedPasswordOnPinChanged(int pin) =
      _$ChangedPasswordOnPinChanged;

  int get pin;
  $ChangedPasswordOnPinChangedCopyWith<ChangedPasswordOnPinChanged>
      get copyWith;
}

abstract class $ChangedPasswordOnPasswordChangedCopyWith<$Res> {
  factory $ChangedPasswordOnPasswordChangedCopyWith(
          ChangedPasswordOnPasswordChanged value,
          $Res Function(ChangedPasswordOnPasswordChanged) then) =
      _$ChangedPasswordOnPasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

class _$ChangedPasswordOnPasswordChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ChangedPasswordOnPasswordChangedCopyWith<$Res> {
  _$ChangedPasswordOnPasswordChangedCopyWithImpl(
      ChangedPasswordOnPasswordChanged _value,
      $Res Function(ChangedPasswordOnPasswordChanged) _then)
      : super(_value, (v) => _then(v as ChangedPasswordOnPasswordChanged));

  @override
  ChangedPasswordOnPasswordChanged get _value =>
      super._value as ChangedPasswordOnPasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(ChangedPasswordOnPasswordChanged(
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$ChangedPasswordOnPasswordChanged
    implements ChangedPasswordOnPasswordChanged {
  const _$ChangedPasswordOnPasswordChanged(this.password)
      : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'ChangePasswordEvent.onPasswordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangedPasswordOnPasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $ChangedPasswordOnPasswordChangedCopyWith<ChangedPasswordOnPasswordChanged>
      get copyWith => _$ChangedPasswordOnPasswordChangedCopyWithImpl<
          ChangedPasswordOnPasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onPinChanged(int pin),
    @required Result onPasswordChanged(String password),
    @required Result submit(int pin, String password),
  }) {
    assert(onPinChanged != null);
    assert(onPasswordChanged != null);
    assert(submit != null);
    return onPasswordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onPinChanged(int pin),
    Result onPasswordChanged(String password),
    Result submit(int pin, String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onPasswordChanged != null) {
      return onPasswordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onPinChanged(ChangedPasswordOnPinChanged value),
    @required Result onPasswordChanged(ChangedPasswordOnPasswordChanged value),
    @required Result submit(ChangePasswordSubmit value),
  }) {
    assert(onPinChanged != null);
    assert(onPasswordChanged != null);
    assert(submit != null);
    return onPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onPinChanged(ChangedPasswordOnPinChanged value),
    Result onPasswordChanged(ChangedPasswordOnPasswordChanged value),
    Result submit(ChangePasswordSubmit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onPasswordChanged != null) {
      return onPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ChangedPasswordOnPasswordChanged implements ChangePasswordEvent {
  const factory ChangedPasswordOnPasswordChanged(String password) =
      _$ChangedPasswordOnPasswordChanged;

  String get password;
  $ChangedPasswordOnPasswordChangedCopyWith<ChangedPasswordOnPasswordChanged>
      get copyWith;
}

abstract class $ChangePasswordSubmitCopyWith<$Res> {
  factory $ChangePasswordSubmitCopyWith(ChangePasswordSubmit value,
          $Res Function(ChangePasswordSubmit) then) =
      _$ChangePasswordSubmitCopyWithImpl<$Res>;
  $Res call({int pin, String password});
}

class _$ChangePasswordSubmitCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ChangePasswordSubmitCopyWith<$Res> {
  _$ChangePasswordSubmitCopyWithImpl(
      ChangePasswordSubmit _value, $Res Function(ChangePasswordSubmit) _then)
      : super(_value, (v) => _then(v as ChangePasswordSubmit));

  @override
  ChangePasswordSubmit get _value => super._value as ChangePasswordSubmit;

  @override
  $Res call({
    Object pin = freezed,
    Object password = freezed,
  }) {
    return _then(ChangePasswordSubmit(
      pin == freezed ? _value.pin : pin as int,
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$ChangePasswordSubmit implements ChangePasswordSubmit {
  const _$ChangePasswordSubmit(this.pin, this.password)
      : assert(pin != null),
        assert(password != null);

  @override
  final int pin;
  @override
  final String password;

  @override
  String toString() {
    return 'ChangePasswordEvent.submit(pin: $pin, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangePasswordSubmit &&
            (identical(other.pin, pin) ||
                const DeepCollectionEquality().equals(other.pin, pin)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pin) ^
      const DeepCollectionEquality().hash(password);

  @override
  $ChangePasswordSubmitCopyWith<ChangePasswordSubmit> get copyWith =>
      _$ChangePasswordSubmitCopyWithImpl<ChangePasswordSubmit>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onPinChanged(int pin),
    @required Result onPasswordChanged(String password),
    @required Result submit(int pin, String password),
  }) {
    assert(onPinChanged != null);
    assert(onPasswordChanged != null);
    assert(submit != null);
    return submit(pin, password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onPinChanged(int pin),
    Result onPasswordChanged(String password),
    Result submit(int pin, String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(pin, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onPinChanged(ChangedPasswordOnPinChanged value),
    @required Result onPasswordChanged(ChangedPasswordOnPasswordChanged value),
    @required Result submit(ChangePasswordSubmit value),
  }) {
    assert(onPinChanged != null);
    assert(onPasswordChanged != null);
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onPinChanged(ChangedPasswordOnPinChanged value),
    Result onPasswordChanged(ChangedPasswordOnPasswordChanged value),
    Result submit(ChangePasswordSubmit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordSubmit implements ChangePasswordEvent {
  const factory ChangePasswordSubmit(int pin, String password) =
      _$ChangePasswordSubmit;

  int get pin;
  String get password;
  $ChangePasswordSubmitCopyWith<ChangePasswordSubmit> get copyWith;
}

class _$ChangePasswordStateTearOff {
  const _$ChangePasswordStateTearOff();

// ignore: unused_element
  _ChangePasswordState call(
      {@required bool isPinValid,
      @required bool isPasswordValid,
      @required bool isSuccess,
      @required bool isFailure}) {
    return _ChangePasswordState(
      isPinValid: isPinValid,
      isPasswordValid: isPasswordValid,
      isSuccess: isSuccess,
      isFailure: isFailure,
    );
  }
}

// ignore: unused_element
const $ChangePasswordState = _$ChangePasswordStateTearOff();

mixin _$ChangePasswordState {
  bool get isPinValid;
  bool get isPasswordValid;
  bool get isSuccess;
  bool get isFailure;

  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith;
}

abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res>;
  $Res call(
      {bool isPinValid, bool isPasswordValid, bool isSuccess, bool isFailure});
}

class _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  final ChangePasswordState _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordState) _then;

  @override
  $Res call({
    Object isPinValid = freezed,
    Object isPasswordValid = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
  }) {
    return _then(_value.copyWith(
      isPinValid:
          isPinValid == freezed ? _value.isPinValid : isPinValid as bool,
      isPasswordValid: isPasswordValid == freezed
          ? _value.isPasswordValid
          : isPasswordValid as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
    ));
  }
}

abstract class _$ChangePasswordStateCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$ChangePasswordStateCopyWith(_ChangePasswordState value,
          $Res Function(_ChangePasswordState) then) =
      __$ChangePasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isPinValid, bool isPasswordValid, bool isSuccess, bool isFailure});
}

class __$ChangePasswordStateCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements _$ChangePasswordStateCopyWith<$Res> {
  __$ChangePasswordStateCopyWithImpl(
      _ChangePasswordState _value, $Res Function(_ChangePasswordState) _then)
      : super(_value, (v) => _then(v as _ChangePasswordState));

  @override
  _ChangePasswordState get _value => super._value as _ChangePasswordState;

  @override
  $Res call({
    Object isPinValid = freezed,
    Object isPasswordValid = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
  }) {
    return _then(_ChangePasswordState(
      isPinValid:
          isPinValid == freezed ? _value.isPinValid : isPinValid as bool,
      isPasswordValid: isPasswordValid == freezed
          ? _value.isPasswordValid
          : isPasswordValid as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
    ));
  }
}

class _$_ChangePasswordState implements _ChangePasswordState {
  const _$_ChangePasswordState(
      {@required this.isPinValid,
      @required this.isPasswordValid,
      @required this.isSuccess,
      @required this.isFailure})
      : assert(isPinValid != null),
        assert(isPasswordValid != null),
        assert(isSuccess != null),
        assert(isFailure != null);

  @override
  final bool isPinValid;
  @override
  final bool isPasswordValid;
  @override
  final bool isSuccess;
  @override
  final bool isFailure;

  @override
  String toString() {
    return 'ChangePasswordState(isPinValid: $isPinValid, isPasswordValid: $isPasswordValid, isSuccess: $isSuccess, isFailure: $isFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePasswordState &&
            (identical(other.isPinValid, isPinValid) ||
                const DeepCollectionEquality()
                    .equals(other.isPinValid, isPinValid)) &&
            (identical(other.isPasswordValid, isPasswordValid) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordValid, isPasswordValid)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.isFailure, isFailure) ||
                const DeepCollectionEquality()
                    .equals(other.isFailure, isFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isPinValid) ^
      const DeepCollectionEquality().hash(isPasswordValid) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure);

  @override
  _$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith =>
      __$ChangePasswordStateCopyWithImpl<_ChangePasswordState>(
          this, _$identity);
}

abstract class _ChangePasswordState implements ChangePasswordState {
  const factory _ChangePasswordState(
      {@required bool isPinValid,
      @required bool isPasswordValid,
      @required bool isSuccess,
      @required bool isFailure}) = _$_ChangePasswordState;

  @override
  bool get isPinValid;
  @override
  bool get isPasswordValid;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  _$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith;
}
