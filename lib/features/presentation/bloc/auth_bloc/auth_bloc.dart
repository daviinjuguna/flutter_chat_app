import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterchatapp/core/errors/failures.dart';
import 'package:flutterchatapp/features/domain/repository/auth_repository.dart';
import 'package:flutterchatapp/features/domain/usecase/check_login.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final CheckLogin isLoggedIn;
  final AuthRepository repository;

  AuthBloc({
    @required this.isLoggedIn,
    @required this.repository}) : assert(repository != null),
    super(AuthState.authInitial());

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
          yield AuthState.authLoggedOut();
        }
      },
      loggedIn: (e)async*{
        yield AuthState.authSuccess();
      },
      loggedOut: (e)async*{
        final logoutEither = await repository.logout();
        yield* logoutEither.fold(
          (failure) async*{
            print("Logout Error");
            yield AuthState.error("error", _mapFailureToMessage);
          },
          (success) async*{
            yield AuthState.authLoggedOut(); //auth failure is not authenticated..so when logged out u are not authenticated
          }
        );
      }, 
      refreshToken: (e)async* {
        //TODO implement refreshToken
      },
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
