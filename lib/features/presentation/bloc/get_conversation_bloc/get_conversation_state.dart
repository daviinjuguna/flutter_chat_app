part of 'get_conversation_bloc.dart';

abstract class GetConversationState extends Equatable {
  const GetConversationState();
  
  @override
  List<Object> get props => [];
}

class GetConversationInitial extends GetConversationState {
  @override
  List<Object> get props => [];
}
class GetConversationLoading extends GetConversationState {
  @override
  List<Object> get props => [];
}
class GetConversationSeccess extends GetConversationState {
  final List<ConversationModel> conversation;

  GetConversationSeccess({@required this.conversation});
  @override
  List<Object> get props => [conversation];
}
class GetConversationError extends GetConversationState {
  final String message;

  GetConversationError({@required this.message});
  @override
  List<Object> get props => [message];
}
