import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterchatapp/core/errors/failures.dart';
import 'package:flutterchatapp/core/usecase/usecase.dart';
import 'package:flutterchatapp/features/data/model/change_model.dart';
import 'package:flutterchatapp/features/domain/entities/change_password.dart';
import 'package:flutterchatapp/features/domain/repository/chat_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChangeUserPassword extends UseCase<ChangePassword,ChangeParams>{
  final ChatRepository repository;

  ChangeUserPassword({@required this.repository});

  @override
  Future<Either<Failure, ChangePassword>> call(ChangeParams params) {
    return repository.changePassword(params.model);
  }

  
}

class ChangeParams extends Equatable {
  final ChangeModel model;

  ChangeParams({@required this.model});

  @override
  List<Object> get props => [model];
  
}