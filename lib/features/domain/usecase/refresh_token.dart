import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:flutterchatapp/core/errors/failures.dart';
import 'package:flutterchatapp/core/usecase/usecase.dart';
import 'package:flutterchatapp/features/domain/entities/api_success.dart';
import 'package:flutterchatapp/features/domain/repository/chat_repository.dart';

@injectable
class RefreshTokenUseCase extends UseCase<ApiSuccess, NoParams> {
  final ChatRepository repository;

  RefreshTokenUseCase({@required this.repository});

  @override
  Future<Either<Failure, ApiSuccess>> call(NoParams params) {
    return repository.refreshToken();
  }
}