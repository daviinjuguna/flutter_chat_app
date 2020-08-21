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
