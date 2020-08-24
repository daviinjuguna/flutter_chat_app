part of 'update_message_bloc.dart';

abstract class UpdateMessageState extends Equatable {
  const UpdateMessageState();
  
  @override
  List<Object> get props => [];
}

class UpdateMessageInitial extends UpdateMessageState {}
class Success extends UpdateMessageState {
  final ConversationData data;

  Success(this.data);
    @override
  List<Object> get props => [data];
}
class Error extends UpdateMessageState {
  final String message;

  Error(this.message);
  @override
  List<Object> get props => [message];
}
