import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutterchatapp/core/utils/validators.dart';
import 'package:flutterchatapp/features/domain/repository/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';
part 'login_state.dart';

part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository repository;
  LoginBloc({@required this.repository}) :assert(repository != null),
   super(LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e)async*{
        yield state.copyWith(
        isEmailValid: Validators.isValidEmail(e.email),
        isPasswordValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        );
      },
      passwordChanged: (e)async*{
        yield state.copyWith(
        isEmailValid: true,
        isPasswordValid: Validators.isValidPassword(e.password),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        );
      },
      loginPressed: (e)async*{
        yield LoginState.loading();
        final loginEither = await repository.loginUser(e.email, e.password);
        loginEither.fold(
          (failure) async*{
            yield LoginState.failure();
          },
          (success) async*{
            yield LoginState.success();
          }
        );
      }
    );
  }
}
