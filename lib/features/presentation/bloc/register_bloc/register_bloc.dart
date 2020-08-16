import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutterchatapp/core/utils/validators.dart';
import 'package:flutterchatapp/features/domain/repository/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_event.dart';
part 'register_state.dart';

part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRepository repository;

  RegisterBloc({@required this.repository}) : assert(repository != null),super(RegisterState.initial());

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    yield* event.map(
      nameChanged: (e)async*{
        yield state.copyWith(
          isNameValid: Validators.isValidName(e.name),
          isEmailValid: true,
          isPasswordValid: true,
          isSubmitting: false,
          isSuccess: false,
          isFailure: false,
        );
      },
      emailChanged: (e)async*{
        yield state.copyWith(
          isNameValid: true,
          isEmailValid: Validators.isValidEmail(e.email),
          isPasswordValid: true,
          isSubmitting: false,
          isSuccess: false,
          isFailure: false,
        );
      },
      passwordChanged: (e)async*{
        yield state.copyWith(
          isNameValid: true,
          isEmailValid: true,
          isPasswordValid: Validators.isValidPassword(e.password),
          isSubmitting: false,
          isSuccess: false,
          isFailure: false,
        );
      },
      registerSubmitted: (e)async*{
        yield RegisterState.loading();
        final registerEither = await repository.registerUser(e.name, e.email, e.password, e.passwordConfirmed);
        yield* registerEither.fold(
          (failure) async*{
            print("Error");
            yield RegisterState.failure();
          },
          (success)async*{
            yield RegisterState.success();
          }
        );
      }
    );
  }
}
