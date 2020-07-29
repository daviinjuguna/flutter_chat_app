import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutterchatapp/core/errors/failures.dart';
import 'package:flutterchatapp/core/usecase/usecase.dart';
import 'package:flutterchatapp/features/data/model/login_model.dart';
import 'package:flutterchatapp/features/domain/entities/api_success.dart';
import 'package:flutterchatapp/features/domain/repository/chat_repository.dart';

class LoginUser extends UseCase<ApiSuccess, LoginParams> {
  final ChatRepository repository;

  LoginUser({@required this.repository});

  @override
  Future<Either<Failure, ApiSuccess>> call(LoginParams params) {
    return repository.loginUser(params.model);
  }
}

class LoginParams extends Equatable {
  final LoginModel model;

  LoginParams({@required this.model});

  @override
  List<Object> get props => [model];
}