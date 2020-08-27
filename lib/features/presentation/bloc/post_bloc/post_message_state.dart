part of 'post_message_bloc.dart';

abstract class PostMessageState extends Equatable {
  const PostMessageState();
  
  @override
  List<Object> get props => [];
}

class PostMessageInitial extends PostMessageState {}
class PostMessageLoading extends PostMessageState {}
class PostMessageSuccess extends PostMessageState {
  final MessagesModel message;

  PostMessageSuccess({@required this.message});
  @override
  List<Object> get props => [message];
}
class PostMessageError extends PostMessageState {
  final String message;

  PostMessageError({@required this.message});
  @override
  List<Object> get props => [message];
}
