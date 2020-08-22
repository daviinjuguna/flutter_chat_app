// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PostMessageEventTearOff {
  const _$PostMessageEventTearOff();

// ignore: unused_element
  SendMessage sendMessage(String body, int conversationId) {
    return SendMessage(
      body,
      conversationId,
    );
  }
}

// ignore: unused_element
const $PostMessageEvent = _$PostMessageEventTearOff();

mixin _$PostMessageEvent {
  String get body;
  int get conversationId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendMessage(String body, int conversationId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendMessage(String body, int conversationId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendMessage(SendMessage value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendMessage(SendMessage value),
    @required Result orElse(),
  });

  $PostMessageEventCopyWith<PostMessageEvent> get copyWith;
}

abstract class $PostMessageEventCopyWith<$Res> {
  factory $PostMessageEventCopyWith(
          PostMessageEvent value, $Res Function(PostMessageEvent) then) =
      _$PostMessageEventCopyWithImpl<$Res>;
  $Res call({String body, int conversationId});
}

class _$PostMessageEventCopyWithImpl<$Res>
    implements $PostMessageEventCopyWith<$Res> {
  _$PostMessageEventCopyWithImpl(this._value, this._then);

  final PostMessageEvent _value;
  // ignore: unused_field
  final $Res Function(PostMessageEvent) _then;

  @override
  $Res call({
    Object body = freezed,
    Object conversationId = freezed,
  }) {
    return _then(_value.copyWith(
      body: body == freezed ? _value.body : body as String,
      conversationId: conversationId == freezed
          ? _value.conversationId
          : conversationId as int,
    ));
  }
}

abstract class $SendMessageCopyWith<$Res>
    implements $PostMessageEventCopyWith<$Res> {
  factory $SendMessageCopyWith(
          SendMessage value, $Res Function(SendMessage) then) =
      _$SendMessageCopyWithImpl<$Res>;
  @override
  $Res call({String body, int conversationId});
}

class _$SendMessageCopyWithImpl<$Res>
    extends _$PostMessageEventCopyWithImpl<$Res>
    implements $SendMessageCopyWith<$Res> {
  _$SendMessageCopyWithImpl(
      SendMessage _value, $Res Function(SendMessage) _then)
      : super(_value, (v) => _then(v as SendMessage));

  @override
  SendMessage get _value => super._value as SendMessage;

  @override
  $Res call({
    Object body = freezed,
    Object conversationId = freezed,
  }) {
    return _then(SendMessage(
      body == freezed ? _value.body : body as String,
      conversationId == freezed ? _value.conversationId : conversationId as int,
    ));
  }
}

class _$SendMessage implements SendMessage {
  const _$SendMessage(this.body, this.conversationId)
      : assert(body != null),
        assert(conversationId != null);

  @override
  final String body;
  @override
  final int conversationId;

  @override
  String toString() {
    return 'PostMessageEvent.sendMessage(body: $body, conversationId: $conversationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SendMessage &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.conversationId, conversationId) ||
                const DeepCollectionEquality()
                    .equals(other.conversationId, conversationId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(conversationId);

  @override
  $SendMessageCopyWith<SendMessage> get copyWith =>
      _$SendMessageCopyWithImpl<SendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendMessage(String body, int conversationId),
  }) {
    assert(sendMessage != null);
    return sendMessage(body, conversationId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendMessage(String body, int conversationId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendMessage != null) {
      return sendMessage(body, conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendMessage(SendMessage value),
  }) {
    assert(sendMessage != null);
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendMessage(SendMessage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessage implements PostMessageEvent {
  const factory SendMessage(String body, int conversationId) = _$SendMessage;

  @override
  String get body;
  @override
  int get conversationId;
  @override
  $SendMessageCopyWith<SendMessage> get copyWith;
}
