// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'get_conversation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GetConversationEventTearOff {
  const _$GetConversationEventTearOff();

// ignore: unused_element
  GetConversation getConversation() {
    return const GetConversation();
  }
}

// ignore: unused_element
const $GetConversationEvent = _$GetConversationEventTearOff();

mixin _$GetConversationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getConversation(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getConversation(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getConversation(GetConversation value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getConversation(GetConversation value),
    @required Result orElse(),
  });
}

abstract class $GetConversationEventCopyWith<$Res> {
  factory $GetConversationEventCopyWith(GetConversationEvent value,
          $Res Function(GetConversationEvent) then) =
      _$GetConversationEventCopyWithImpl<$Res>;
}

class _$GetConversationEventCopyWithImpl<$Res>
    implements $GetConversationEventCopyWith<$Res> {
  _$GetConversationEventCopyWithImpl(this._value, this._then);

  final GetConversationEvent _value;
  // ignore: unused_field
  final $Res Function(GetConversationEvent) _then;
}

abstract class $GetConversationCopyWith<$Res> {
  factory $GetConversationCopyWith(
          GetConversation value, $Res Function(GetConversation) then) =
      _$GetConversationCopyWithImpl<$Res>;
}

class _$GetConversationCopyWithImpl<$Res>
    extends _$GetConversationEventCopyWithImpl<$Res>
    implements $GetConversationCopyWith<$Res> {
  _$GetConversationCopyWithImpl(
      GetConversation _value, $Res Function(GetConversation) _then)
      : super(_value, (v) => _then(v as GetConversation));

  @override
  GetConversation get _value => super._value as GetConversation;
}

class _$GetConversation implements GetConversation {
  const _$GetConversation();

  @override
  String toString() {
    return 'GetConversationEvent.getConversation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetConversation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getConversation(),
  }) {
    assert(getConversation != null);
    return getConversation();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getConversation(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getConversation != null) {
      return getConversation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getConversation(GetConversation value),
  }) {
    assert(getConversation != null);
    return getConversation(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getConversation(GetConversation value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getConversation != null) {
      return getConversation(this);
    }
    return orElse();
  }
}

abstract class GetConversation implements GetConversationEvent {
  const factory GetConversation() = _$GetConversation;
}

class _$GetConversationStateTearOff {
  const _$GetConversationStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Success success(GetConversationModel conversation) {
    return _Success(
      conversation,
    );
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
const $GetConversationState = _$GetConversationStateTearOff();

mixin _$GetConversationState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(GetConversationModel conversation),
    @required Result error(String error, dynamic message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(GetConversationModel conversation),
    Result error(String error, dynamic message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  });
}

abstract class $GetConversationStateCopyWith<$Res> {
  factory $GetConversationStateCopyWith(GetConversationState value,
          $Res Function(GetConversationState) then) =
      _$GetConversationStateCopyWithImpl<$Res>;
}

class _$GetConversationStateCopyWithImpl<$Res>
    implements $GetConversationStateCopyWith<$Res> {
  _$GetConversationStateCopyWithImpl(this._value, this._then);

  final GetConversationState _value;
  // ignore: unused_field
  final $Res Function(GetConversationState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$GetConversationStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GetConversationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(GetConversationModel conversation),
    @required Result error(String error, dynamic message),
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
    Result success(GetConversationModel conversation),
    Result error(String error, dynamic message),
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
    @required Result initial(_Initial value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GetConversationState {
  const factory _Initial() = _$_Initial;
}

abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({GetConversationModel conversation});
}

class __$SuccessCopyWithImpl<$Res>
    extends _$GetConversationStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object conversation = freezed,
  }) {
    return _then(_Success(
      conversation == freezed
          ? _value.conversation
          : conversation as GetConversationModel,
    ));
  }
}

class _$_Success implements _Success {
  const _$_Success(this.conversation) : assert(conversation != null);

  @override
  final GetConversationModel conversation;

  @override
  String toString() {
    return 'GetConversationState.success(conversation: $conversation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.conversation, conversation) ||
                const DeepCollectionEquality()
                    .equals(other.conversation, conversation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(conversation);

  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(GetConversationModel conversation),
    @required Result error(String error, dynamic message),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return success(conversation);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(GetConversationModel conversation),
    Result error(String error, dynamic message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(conversation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements GetConversationState {
  const factory _Success(GetConversationModel conversation) = _$_Success;

  GetConversationModel get conversation;
  _$SuccessCopyWith<_Success> get copyWith;
}

abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String error, dynamic message});
}

class __$ErrorCopyWithImpl<$Res>
    extends _$GetConversationStateCopyWithImpl<$Res>
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

class _$_Error implements _Error {
  const _$_Error(this.error, this.message)
      : assert(error != null),
        assert(message != null);

  @override
  final String error;
  @override
  final dynamic message;

  @override
  String toString() {
    return 'GetConversationState.error(error: $error, message: $message)';
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
    @required Result initial(),
    @required Result success(GetConversationModel conversation),
    @required Result error(String error, dynamic message),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return error(this.error, message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(GetConversationModel conversation),
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
    @required Result initial(_Initial value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result success(_Success value),
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

abstract class _Error implements GetConversationState {
  const factory _Error(String error, dynamic message) = _$_Error;

  String get error;
  dynamic get message;
  _$ErrorCopyWith<_Error> get copyWith;
}
