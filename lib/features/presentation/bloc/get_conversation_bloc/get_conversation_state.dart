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
  final GetConversationModel data;

  GetConversationSeccess({@required this.data});
  @override
  List<Object> get props => [data];
}
class GetConversationError extends GetConversationState {
  final String message;

  GetConversationError({@required this.message});
  @override
  List<Object> get props => [message];
}
