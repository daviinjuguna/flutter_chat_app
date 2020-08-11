import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterchatapp/features/domain/usecase/check_login.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final CheckLogin isLoggedIn;

  AuthBloc({@required this.isLoggedIn}) : super(AuthState.authInitial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      started: (e)async*{
        final userIsLoggedIn = await isLoggedIn();
        if (userIsLoggedIn) {
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
        //TODO implement refreshToken
      },
    );
  }
}
