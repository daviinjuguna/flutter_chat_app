import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutterchatapp/core/utils/validators.dart';
import 'package:flutterchatapp/features/data/model/login_model.dart';
import 'package:flutterchatapp/features/domain/usecase/login_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';
part 'login_state.dart';

part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUser user;
  
  LoginBloc({@required this.user}) : assert(user != null),super(LoginState.initial());

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
        LoginModel model = LoginModel(email: e.email, password: e.password);
        yield LoginState.loading();
        try{
          await user(LoginParams(model: model));
          yield LoginState.success();
        }catch(_){
          yield LoginState.failure();
        }
      }
    );
  }
}
