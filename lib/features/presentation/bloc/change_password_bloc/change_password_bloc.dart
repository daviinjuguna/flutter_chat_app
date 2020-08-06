import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutterchatapp/core/utils/validators.dart';
import 'package:flutterchatapp/features/data/model/change_model.dart';
import 'package:flutterchatapp/features/domain/usecase/change_user_password.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';

part 'change_password_bloc.freezed.dart';

@injectable
class ChangePasswordBloc extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final ChangeUserPassword userPassword;
  ChangePasswordBloc({@required this.userPassword}) : super(ChangePasswordState.initial());

  @override
  Stream<ChangePasswordState> mapEventToState(
    ChangePasswordEvent event,
  ) async* {
    yield* event.map(
      onPinChanged: (e)async*{
        yield state.copyWith(
          isPinValid:Validators.isValidPin(e.pin.toString()),
          isPasswordValid:true,
          isSuccess:false,
          isFailure:false
        );
      },
      onPasswordChanged: (e) async*{
          yield state.copyWith(
          isPinValid:true,
          isPasswordValid:Validators.isValidPassword(e.password),
          isSuccess:false,
          isFailure:false
        );
      },
      submit: (e) async*{
        ChangeModel model = ChangeModel(pin: e.pin, password: e.password);
        final changeEither = await userPassword(ChangeParams(model: model));
        yield* changeEither.fold(
          (failure) async*{
            yield ChangePasswordState.failure();
          },
          (success) async*{
            yield ChangePasswordState.success();
          });
      }
    );
  }
}
