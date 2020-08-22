part of 'post_message_bloc.dart';

@freezed
abstract class PostMessageEvent with _$PostMessageEvent{
  const factory PostMessageEvent.sendMessage(
    String body,int conversationId
  ) = SendMessage;
}
