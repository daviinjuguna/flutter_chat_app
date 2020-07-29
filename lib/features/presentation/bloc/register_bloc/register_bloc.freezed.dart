// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegisterEventTearOff {
  const _$RegisterEventTearOff();

// ignore: unused_element
  RegisterNameChanged nameChanged(String name) {
    return RegisterNameChanged(
      name,
    );
  }

// ignore: unused_element
  RegisterEmailChanged emailChanged(String email) {
    return RegisterEmailChanged(
      email,
    );
  }

// ignore: unused_element
  RegisterPasswordChanged passwordChanged(String password) {
    return RegisterPasswordChanged(
      password,
    );
  }

// ignore: unused_element
  RegisterSubmitted registerSubmitted(
      String email, String password, String name, String passwordConfirmed) {
    return RegisterSubmitted(
      email,
      password,
      name,
      passwordConfirmed,
    );
  }
}

// ignore: unused_element
const $RegisterEvent = _$RegisterEventTearOff();

mixin _$RegisterEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required
        Result registerSubmitted(String email, String password, String name,
            String passwordConfirmed),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerSubmitted(
        String email, String password, String name, String passwordConfirmed),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(RegisterNameChanged value),
    @required Result emailChanged(RegisterEmailChanged value),
    @required Result passwordChanged(RegisterPasswordChanged value),
    @required Result registerSubmitted(RegisterSubmitted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(RegisterNameChanged value),
    Result emailChanged(RegisterEmailChanged value),
    Result passwordChanged(RegisterPasswordChanged value),
    Result registerSubmitted(RegisterSubmitted value),
    @required Result orElse(),
  });
}

abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
}

class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;
}

abstract class $RegisterNameChangedCopyWith<$Res> {
  factory $RegisterNameChangedCopyWith(
          RegisterNameChanged value, $Res Function(RegisterNameChanged) then) =
      _$RegisterNameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$RegisterNameChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterNameChangedCopyWith<$Res> {
  _$RegisterNameChangedCopyWithImpl(
      RegisterNameChanged _value, $Res Function(RegisterNameChanged) _then)
      : super(_value, (v) => _then(v as RegisterNameChanged));

  @override
  RegisterNameChanged get _value => super._value as RegisterNameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(RegisterNameChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$RegisterNameChanged implements RegisterNameChanged {
  const _$RegisterNameChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'RegisterEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterNameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $RegisterNameChangedCopyWith<RegisterNameChanged> get copyWith =>
      _$RegisterNameChangedCopyWithImpl<RegisterNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required
        Result registerSubmitted(String email, String password, String name,
            String passwordConfirmed),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerSubmitted != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerSubmitted(
        String email, String password, String name, String passwordConfirmed),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(RegisterNameChanged value),
    @required Result emailChanged(RegisterEmailChanged value),
    @required Result passwordChanged(RegisterPasswordChanged value),
    @required Result registerSubmitted(RegisterSubmitted value),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerSubmitted != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(RegisterNameChanged value),
    Result emailChanged(RegisterEmailChanged value),
    Result passwordChanged(RegisterPasswordChanged value),
    Result registerSubmitted(RegisterSubmitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class RegisterNameChanged implements RegisterEvent {
  const factory RegisterNameChanged(String name) = _$RegisterNameChanged;

  String get name;
  $RegisterNameChangedCopyWith<RegisterNameChanged> get copyWith;
}

abstract class $RegisterEmailChangedCopyWith<$Res> {
  factory $RegisterEmailChangedCopyWith(RegisterEmailChanged value,
          $Res Function(RegisterEmailChanged) then) =
      _$RegisterEmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

class _$RegisterEmailChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEmailChangedCopyWith<$Res> {
  _$RegisterEmailChangedCopyWithImpl(
      RegisterEmailChanged _value, $Res Function(RegisterEmailChanged) _then)
      : super(_value, (v) => _then(v as RegisterEmailChanged));

  @override
  RegisterEmailChanged get _value => super._value as RegisterEmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(RegisterEmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

class _$RegisterEmailChanged implements RegisterEmailChanged {
  const _$RegisterEmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterEmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $RegisterEmailChangedCopyWith<RegisterEmailChanged> get copyWith =>
      _$RegisterEmailChangedCopyWithImpl<RegisterEmailChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required
        Result registerSubmitted(String email, String password, String name,
            String passwordConfirmed),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerSubmitted != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerSubmitted(
        String email, String password, String name, String passwordConfirmed),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(RegisterNameChanged value),
    @required Result emailChanged(RegisterEmailChanged value),
    @required Result passwordChanged(RegisterPasswordChanged value),
    @required Result registerSubmitted(RegisterSubmitted value),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerSubmitted != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(RegisterNameChanged value),
    Result emailChanged(RegisterEmailChanged value),
    Result passwordChanged(RegisterPasswordChanged value),
    Result registerSubmitted(RegisterSubmitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class RegisterEmailChanged implements RegisterEvent {
  const factory RegisterEmailChanged(String email) = _$RegisterEmailChanged;

  String get email;
  $RegisterEmailChangedCopyWith<RegisterEmailChanged> get copyWith;
}

abstract class $RegisterPasswordChangedCopyWith<$Res> {
  factory $RegisterPasswordChangedCopyWith(RegisterPasswordChanged value,
          $Res Function(RegisterPasswordChanged) then) =
      _$RegisterPasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

class _$RegisterPasswordChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterPasswordChangedCopyWith<$Res> {
  _$RegisterPasswordChangedCopyWithImpl(RegisterPasswordChanged _value,
      $Res Function(RegisterPasswordChanged) _then)
      : super(_value, (v) => _then(v as RegisterPasswordChanged));

  @override
  RegisterPasswordChanged get _value => super._value as RegisterPasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(RegisterPasswordChanged(
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$RegisterPasswordChanged implements RegisterPasswordChanged {
  const _$RegisterPasswordChanged(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterPasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $RegisterPasswordChangedCopyWith<RegisterPasswordChanged> get copyWith =>
      _$RegisterPasswordChangedCopyWithImpl<RegisterPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required
        Result registerSubmitted(String email, String password, String name,
            String passwordConfirmed),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerSubmitted != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerSubmitted(
        String email, String password, String name, String passwordConfirmed),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(RegisterNameChanged value),
    @required Result emailChanged(RegisterEmailChanged value),
    @required Result passwordChanged(RegisterPasswordChanged value),
    @required Result registerSubmitted(RegisterSubmitted value),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerSubmitted != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(RegisterNameChanged value),
    Result emailChanged(RegisterEmailChanged value),
    Result passwordChanged(RegisterPasswordChanged value),
    Result registerSubmitted(RegisterSubmitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class RegisterPasswordChanged implements RegisterEvent {
  const factory RegisterPasswordChanged(String password) =
      _$RegisterPasswordChanged;

  String get password;
  $RegisterPasswordChangedCopyWith<RegisterPasswordChanged> get copyWith;
}

abstract class $RegisterSubmittedCopyWith<$Res> {
  factory $RegisterSubmittedCopyWith(
          RegisterSubmitted value, $Res Function(RegisterSubmitted) then) =
      _$RegisterSubmittedCopyWithImpl<$Res>;
  $Res call(
      {String email, String password, String name, String passwordConfirmed});
}

class _$RegisterSubmittedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterSubmittedCopyWith<$Res> {
  _$RegisterSubmittedCopyWithImpl(
      RegisterSubmitted _value, $Res Function(RegisterSubmitted) _then)
      : super(_value, (v) => _then(v as RegisterSubmitted));

  @override
  RegisterSubmitted get _value => super._value as RegisterSubmitted;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object name = freezed,
    Object passwordConfirmed = freezed,
  }) {
    return _then(RegisterSubmitted(
      email == freezed ? _value.email : email as String,
      password == freezed ? _value.password : password as String,
      name == freezed ? _value.name : name as String,
      passwordConfirmed == freezed
          ? _value.passwordConfirmed
          : passwordConfirmed as String,
    ));
  }
}

class _$RegisterSubmitted implements RegisterSubmitted {
  const _$RegisterSubmitted(
      this.email, this.password, this.name, this.passwordConfirmed)
      : assert(email != null),
        assert(password != null),
        assert(name != null),
        assert(passwordConfirmed != null);

  @override
  final String email;
  @override
  final String password;
  @override
  final String name;
  @override
  final String passwordConfirmed;

  @override
  String toString() {
    return 'RegisterEvent.registerSubmitted(email: $email, password: $password, name: $name, passwordConfirmed: $passwordConfirmed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterSubmitted &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.passwordConfirmed, passwordConfirmed) ||
                const DeepCollectionEquality()
                    .equals(other.passwordConfirmed, passwordConfirmed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(passwordConfirmed);

  @override
  $RegisterSubmittedCopyWith<RegisterSubmitted> get copyWith =>
      _$RegisterSubmittedCopyWithImpl<RegisterSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required
        Result registerSubmitted(String email, String password, String name,
            String passwordConfirmed),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerSubmitted != null);
    return registerSubmitted(email, password, name, passwordConfirmed);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerSubmitted(
        String email, String password, String name, String passwordConfirmed),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerSubmitted != null) {
      return registerSubmitted(email, password, name, passwordConfirmed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(RegisterNameChanged value),
    @required Result emailChanged(RegisterEmailChanged value),
    @required Result passwordChanged(RegisterPasswordChanged value),
    @required Result registerSubmitted(RegisterSubmitted value),
  }) {
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerSubmitted != null);
    return registerSubmitted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(RegisterNameChanged value),
    Result emailChanged(RegisterEmailChanged value),
    Result passwordChanged(RegisterPasswordChanged value),
    Result registerSubmitted(RegisterSubmitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerSubmitted != null) {
      return registerSubmitted(this);
    }
    return orElse();
  }
}

abstract class RegisterSubmitted implements RegisterEvent {
  const factory RegisterSubmitted(String email, String password, String name,
      String passwordConfirmed) = _$RegisterSubmitted;

  String get email;
  String get password;
  String get name;
  String get passwordConfirmed;
  $RegisterSubmittedCopyWith<RegisterSubmitted> get copyWith;
}

class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

// ignore: unused_element
  _RegisterState call(
      {@required bool isNameValid,
      @required bool isEmailValid,
      @required bool isPasswordValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure}) {
    return _RegisterState(
      isNameValid: isNameValid,
      isEmailValid: isEmailValid,
      isPasswordValid: isPasswordValid,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
    );
  }
}

// ignore: unused_element
const $RegisterState = _$RegisterStateTearOff();

mixin _$RegisterState {
  bool get isNameValid;
  bool get isEmailValid;
  bool get isPasswordValid;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;

  $RegisterStateCopyWith<RegisterState> get copyWith;
}

abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {bool isNameValid,
      bool isEmailValid,
      bool isPasswordValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure});
}

class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object isNameValid = freezed,
    Object isEmailValid = freezed,
    Object isPasswordValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
  }) {
    return _then(_value.copyWith(
      isNameValid:
          isNameValid == freezed ? _value.isNameValid : isNameValid as bool,
      isEmailValid:
          isEmailValid == freezed ? _value.isEmailValid : isEmailValid as bool,
      isPasswordValid: isPasswordValid == freezed
          ? _value.isPasswordValid
          : isPasswordValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
    ));
  }
}

abstract class _$RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) then) =
      __$RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isNameValid,
      bool isEmailValid,
      bool isPasswordValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure});
}

class __$RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(
      _RegisterState _value, $Res Function(_RegisterState) _then)
      : super(_value, (v) => _then(v as _RegisterState));

  @override
  _RegisterState get _value => super._value as _RegisterState;

  @override
  $Res call({
    Object isNameValid = freezed,
    Object isEmailValid = freezed,
    Object isPasswordValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
  }) {
    return _then(_RegisterState(
      isNameValid:
          isNameValid == freezed ? _value.isNameValid : isNameValid as bool,
      isEmailValid:
          isEmailValid == freezed ? _value.isEmailValid : isEmailValid as bool,
      isPasswordValid: isPasswordValid == freezed
          ? _value.isPasswordValid
          : isPasswordValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
    ));
  }
}

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState(
      {@required this.isNameValid,
      @required this.isEmailValid,
      @required this.isPasswordValid,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure})
      : assert(isNameValid != null),
        assert(isEmailValid != null),
        assert(isPasswordValid != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null);

  @override
  final bool isNameValid;
  @override
  final bool isEmailValid;
  @override
  final bool isPasswordValid;
  @override
  final bool isSubmitting;
  @override
  final bool isSuccess;
  @override
  final bool isFailure;

  @override
  String toString() {
    return 'RegisterState(isNameValid: $isNameValid, isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterState &&
            (identical(other.isNameValid, isNameValid) ||
                const DeepCollectionEquality()
                    .equals(other.isNameValid, isNameValid)) &&
            (identical(other.isEmailValid, isEmailValid) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailValid, isEmailValid)) &&
            (identical(other.isPasswordValid, isPasswordValid) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordValid, isPasswordValid)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
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
      const DeepCollectionEquality().hash(isNameValid) ^
      const DeepCollectionEquality().hash(isEmailValid) ^
      const DeepCollectionEquality().hash(isPasswordValid) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure);

  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {@required bool isNameValid,
      @required bool isEmailValid,
      @required bool isPasswordValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure}) = _$_RegisterState;

  @override
  bool get isNameValid;
  @override
  bool get isEmailValid;
  @override
  bool get isPasswordValid;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith;
}
