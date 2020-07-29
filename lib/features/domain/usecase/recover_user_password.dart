import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/errors/failures.dart';
import 'package:flutterchatapp/core/usecase/usecase.dart';
import 'package:flutterchatapp/features/data/model/recover_model.dart';
import 'package:flutterchatapp/features/domain/entities/recover_password.dart';
import 'package:flutterchatapp/features/domain/repository/chat_repository.dart';

class RecoverUserPassword extends UseCase<RecoverPassword,RecoverParams> {
  final ChatRepository repository;

  RecoverUserPassword({@required this.repository});

  @override
  Future<Either<Failure, RecoverPassword>> call(RecoverParams params) {
    return repository.recoverPassword(params.model);
  }

  
}

class RecoverParams extends Equatable {
  final RecoverModel model;

  RecoverParams({@required this.model});
  
  @override
  List<Object> get props => [model];
}