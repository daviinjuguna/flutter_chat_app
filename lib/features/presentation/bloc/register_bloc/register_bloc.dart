import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutterchatapp/core/utils/validators.dart';
import 'package:flutterchatapp/features/data/model/register_model.dart';
import 'package:flutterchatapp/features/domain/usecase/register_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_event.dart';
part 'register_state.dart';

part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterUser user;
  RegisterBloc({@required this.user}) : super(RegisterState.initial());

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    yield* event.map(
      nameChanged: (e)async*{
        yield state.copyWith(
          isNameValid:Validators.isValidName(e.name),
          isEmailValid: true,
          isPasswordValid: true,
          isSubmitting: false,
          isSuccess: false,
          isFailure: false,
        );
      },
      emailChanged: (e)async*{
        yield state.copyWith(
          isNameValid:true,
          isEmailValid: Validators.isValidEmail(e.email),
          isPasswordValid: true,
          isSubmitting: false,
          isSuccess: false,
          isFailure: false,
        );
      },
      passwordChanged: (e)async*{
        yield state.copyWith(
          isNameValid:true,
          isEmailValid: true,
          isPasswordValid: Validators.isValidPassword(e.password),
          isSubmitting: false,
          isSuccess: false,
          isFailure: false,
        );
      },
      registerSubmitted: (e)async*{
        RegisterModel model = RegisterModel(
          name: e.name,
          email: e.email,
          password: e.password,
          password_confirmation: e.passwordConfirmed
        );
        yield RegisterState.loading();
        try {
          await user(RegisterParams(model: model));
          yield RegisterState.success();
        } catch (_) {
          yield RegisterState.failure();
        }
      },
    );
  }
}
