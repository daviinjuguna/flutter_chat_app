import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chopper/chopper.dart';
import 'package:flutterchatapp/core/errors/failures.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/features/data/model/recover_model.dart';
import 'package:flutterchatapp/features/domain/entities/recover_password.dart';
import 'package:flutterchatapp/features/domain/repository/chat_repository.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'recover_password_event.dart';
part 'recover_password_state.dart';

part 'recover_password_bloc.freezed.dart';

@injectable
class RecoverPasswordBloc extends Bloc<RecoverPasswordEvent, RecoverPasswordState> {
  final ChatRepository repository;
  RecoverPasswordBloc({@required this.repository}) :assert(repository != null), super(RecoverPasswordState.initial());

  @override
  Stream<RecoverPasswordState> mapEventToState(
    RecoverPasswordEvent event,
  ) async* {
    yield* event.map(
      submitEmail: (e)async*{
        RecoverModel model = RecoverModel(email: e.email);
        final responseEither = await repository.recoverPassword(model);
        yield* responseEither.fold(
          (failure) async*{
            yield RecoverPasswordState.error(_mapFailureToMessage(failure));
          } ,
          (pin) async*{
            yield RecoverPasswordState.success(pin);
          });
      }
    );
  }

   String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case PermissionDeniedFailure:
        return PERMISION_DENIED;
      case PermissionNeveAskedFailure:
        return PERMISION_NEVER_ASKED;
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHE_FAILURE_MESSAGE;
      default:
        return 'Unexpected Error';
    }
  }
}
