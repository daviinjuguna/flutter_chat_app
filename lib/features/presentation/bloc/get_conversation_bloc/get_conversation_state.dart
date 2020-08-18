part of 'get_conversation_bloc.dart';

@freezed
abstract class GetConversationState with _$GetConversationState {
  const factory GetConversationState.initial() = _Initial;
  const factory GetConversationState.success(final GetConversationModel conversation) = _Success;
  const factory GetConversationState.error(final String error,message) = _Error;
}

