// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'update_message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UpdateMessageEventTearOff {
  const _$UpdateMessageEventTearOff();

// ignore: unused_element
  UpdateMessage updateMessage(Messages messages) {
    return UpdateMessage(
      messages,
    );
  }
}

// ignore: unused_element
const $UpdateMessageEvent = _$UpdateMessageEventTearOff();

mixin _$UpdateMessageEvent {
  Messages get messages;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateMessage(Messages messages),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateMessage(Messages messages),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateMessage(UpdateMessage value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateMessage(UpdateMessage value),
    @required Result orElse(),
  });

  $UpdateMessageEventCopyWith<UpdateMessageEvent> get copyWith;
}

abstract class $UpdateMessageEventCopyWith<$Res> {
  factory $UpdateMessageEventCopyWith(
          UpdateMessageEvent value, $Res Function(UpdateMessageEvent) then) =
      _$UpdateMessageEventCopyWithImpl<$Res>;
  $Res call({Messages messages});
}

class _$UpdateMessageEventCopyWithImpl<$Res>
    implements $UpdateMessageEventCopyWith<$Res> {
  _$UpdateMessageEventCopyWithImpl(this._value, this._then);

  final UpdateMessageEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateMessageEvent) _then;

  @override
  $Res call({
    Object messages = freezed,
  }) {
    return _then(_value.copyWith(
      messages: messages == freezed ? _value.messages : messages as Messages,
    ));
  }
}

abstract class $UpdateMessageCopyWith<$Res>
    implements $UpdateMessageEventCopyWith<$Res> {
  factory $UpdateMessageCopyWith(
          UpdateMessage value, $Res Function(UpdateMessage) then) =
      _$UpdateMessageCopyWithImpl<$Res>;
  @override
  $Res call({Messages messages});
}

class _$UpdateMessageCopyWithImpl<$Res>
    extends _$UpdateMessageEventCopyWithImpl<$Res>
    implements $UpdateMessageCopyWith<$Res> {
  _$UpdateMessageCopyWithImpl(
      UpdateMessage _value, $Res Function(UpdateMessage) _then)
      : super(_value, (v) => _then(v as UpdateMessage));

  @override
  UpdateMessage get _value => super._value as UpdateMessage;

  @override
  $Res call({
    Object messages = freezed,
  }) {
    return _then(UpdateMessage(
      messages == freezed ? _value.messages : messages as Messages,
    ));
  }
}

class _$UpdateMessage implements UpdateMessage {
  const _$UpdateMessage(this.messages) : assert(messages != null);

  @override
  final Messages messages;

  @override
  String toString() {
    return 'UpdateMessageEvent.updateMessage(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateMessage &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(messages);

  @override
  $UpdateMessageCopyWith<UpdateMessage> get copyWith =>
      _$UpdateMessageCopyWithImpl<UpdateMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateMessage(Messages messages),
  }) {
    assert(updateMessage != null);
    return updateMessage(messages);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateMessage(Messages messages),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateMessage != null) {
      return updateMessage(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateMessage(UpdateMessage value),
  }) {
    assert(updateMessage != null);
    return updateMessage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateMessage(UpdateMessage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateMessage != null) {
      return updateMessage(this);
    }
    return orElse();
  }
}

abstract class UpdateMessage implements UpdateMessageEvent {
  const factory UpdateMessage(Messages messages) = _$UpdateMessage;

  @override
  Messages get messages;
  @override
  $UpdateMessageCopyWith<UpdateMessage> get copyWith;
}
