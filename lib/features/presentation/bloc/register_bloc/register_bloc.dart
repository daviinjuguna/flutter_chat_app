import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_event.dart';
part 'register_state.dart';

part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterState.initial());

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
