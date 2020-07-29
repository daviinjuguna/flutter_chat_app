import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterchatapp/features/domain/usecase/check_first_time.dart';
import 'package:flutterchatapp/features/domain/usecase/check_login.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final CheckFirstTime checkFirstTime;
  final CheckLogin checkLogin;

  AuthBloc({
    @required this.checkFirstTime,
    @required this.checkLogin}) : super(AuthState.authInitial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      started: (e)async*{
        final isFirstTime = await checkFirstTime();
        if (isFirstTime) {
          yield AuthState.authFailure();//not authenticaded since entered app first time 
        }else{
          final checkIsLoggedIn = await checkLogin();
          if (checkIsLoggedIn) {
            yield AuthState.authSuccess();
          }else{
            yield AuthState.authFailure();
          }
        }
      },
      loggedIn: (e)async*{
        yield AuthState.authSuccess();
      },
      loggedOut: (e)async*{
        yield AuthState.authFailure();
        //TODO implement logout
      },
    );
  }
}
