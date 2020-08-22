part of 'post_message_bloc.dart';

abstract class PostMessageState extends Equatable {
  const PostMessageState();
  
  @override
  List<Object> get props => [];
}

class PostMessageInitial extends PostMessageState {}
class PostMessageLoading extends PostMessageState {}
class PostMessageSuccess extends PostMessageState {
  final GetConversationModel model;

  PostMessageSuccess({@required this.model});
  @override
  List<Object> get props => [model];
}
class PostMessageError extends PostMessageState {
  final String message;

  PostMessageError({@required this.message});
  @override
  List<Object> get props => [message];
}
