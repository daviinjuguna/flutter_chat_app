part of 'get_conversation_bloc.dart';

@freezed
abstract class GetConversationEvent with _$GetConversationEvent{
  const factory GetConversationEvent.getConversation() = GetConversation;
}
