import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutterchatapp/core/errors/failures.dart';
import 'package:flutterchatapp/features/data/model/get_conversation_model.dart';
import 'package:flutterchatapp/features/domain/entities/base_model.dart';
import 'package:flutterchatapp/features/domain/repository/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_conversation_event.dart';
part 'get_conversation_state.dart';

part 'get_conversation_bloc.freezed.dart';

@injectable
class GetConversationBloc extends Bloc<GetConversationEvent, GetConversationState> {
  final ChatRepository repository;
  GetConversationBloc({@required this.repository}) : assert(repository != null),
    super(GetConversationInitial());

  @override
  Stream<GetConversationState> mapEventToState(
    GetConversationEvent event,
  ) async* {
    yield* event.map(
      getConversation: (e)async*{
        yield GetConversationLoading();
        final conversationEither = await repository.getConversation();
        yield* conversationEither.fold(
          (failure) async*{
            // yield GetConversationState.error("error", _mapFailureToMessage);
            yield GetConversationError(message:_mapFailureToMessage(failure));
          },
          (conversation) async*{
            // yield GetConversationState.success(conversation.data);
            yield GetConversationSeccess(data: conversation);
          }
        );
      }
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return "Server Failure";
      case CacheFailure:
        return "Cache Failure";
      case UnAuthenticatedFailure:
        return "Unauthenticated";
      default:
        return 'Unexpected Error';
    }
  }
}
