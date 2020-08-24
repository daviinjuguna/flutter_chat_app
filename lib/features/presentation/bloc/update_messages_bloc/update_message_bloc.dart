import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutterchatapp/features/data/model/get_conversation_model.dart';
import 'package:flutterchatapp/features/domain/repository/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'update_message_event.dart';
part 'update_message_state.dart';

part 'update_message_bloc.freezed.dart';

@injectable
class UpdateMessageBloc extends Bloc<UpdateMessageEvent, UpdateMessageState> {
  UpdateMessageBloc(this.repository) : super(UpdateMessageInitial());
  final ChatRepository repository;
  @override
  Stream<UpdateMessageState> mapEventToState(
    UpdateMessageEvent event,
  ) async* {
    yield* event.map(
      updateMessage: (e)async*{
        final updateMessage = await repository.updateMessage(e.messages);
        yield* updateMessage.fold(
          (failure) async*{
            yield Error("imekataa kutuma");
          },
          (data)async*{
            yield Success(data);
          }
        );
      }
    );
  }
}
