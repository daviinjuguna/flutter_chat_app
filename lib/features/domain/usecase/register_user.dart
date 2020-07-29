import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutterchatapp/core/usecase/usecase.dart';
import 'package:flutterchatapp/features/data/model/register_model.dart';
import 'package:flutterchatapp/features/domain/entities/api_success.dart';
import 'package:flutterchatapp/features/domain/repository/chat_repository.dart';

class RegisterUser extends UseCase<ApiSuccess,RegisterParams> {
  final ChatRepository repository;

  RegisterUser({@required this.repository});

  @override
  Future<Either<Failure, ApiSuccess>> call(RegisterParams params) {
    return repository.registerUser(params.model);
  }
  
}

class RegisterParams extends Equatable {
  final RegisterModel model;

  RegisterParams({@required this.model});

  @override
  List<Object> get props => [model];
}