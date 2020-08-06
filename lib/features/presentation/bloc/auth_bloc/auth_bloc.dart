import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterchatapp/core/usecase/usecase.dart';
import 'package:flutterchatapp/features/domain/usecase/check_token.dart';
import 'package:flutterchatapp/features/domain/usecase/refresh_token.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final CheckToken checkToken;
  final RefreshTokenUseCase refreshToken;

  AuthBloc({
    @required this.checkToken,
    @required this.refreshToken}) : super(AuthState.authInitial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      started: (e)async*{
        final tokenPresent = await checkToken();
        if (tokenPresent) {
          yield AuthState.authSuccess();
        }else{
          yield AuthState.authFailure();
        }
      },
      loggedIn: (e)async*{
        yield AuthState.authSuccess();
      },
      loggedOut: (e)async*{
        yield AuthState.authFailure();
        //TODO implement logout
      }, 
      refreshToken: (e)async* {
        final refreshEither = await refreshToken(NoParams());
        yield* refreshEither.fold(
          (failure) async*{
            yield AuthState.authFailure();
          },
          (success) async*{
            yield AuthState.authSuccess();
          });
      },
    );
  }
}
