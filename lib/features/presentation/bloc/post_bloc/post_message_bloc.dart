import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutterchatapp/features/data/model/get_conversation_model.dart';
import 'package:flutterchatapp/features/data/model/post_message_model.dart';
import 'package:flutterchatapp/features/domain/repository/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'post_message_event.dart';
part 'post_message_state.dart';

part 'post_message_bloc.freezed.dart';

@injectable
class PostMessageBloc extends Bloc<PostMessageEvent, PostMessageState> {
  final ChatRepository repository;
  PostMessageBloc({@required this.repository}) : assert(repository != null), super(PostMessageInitial());

  @override
  Stream<PostMessageState> mapEventToState(
    PostMessageEvent event,
  ) async* {
    yield* event.map(
      sendMessage: (e)async*{
        yield PostMessageLoading();
        final sendMessageEither = await repository.postMessage(e.body, e.conversationId);
        yield* sendMessageEither.fold(
          (failure)async* {
            yield PostMessageError(message: "Imekataa kutuma wallae nakusho");
          },
          (model)async* {
            yield PostMessageSuccess(model: model);
          }
        );
      }
    );
  }
}
