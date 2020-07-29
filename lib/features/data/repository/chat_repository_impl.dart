import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/errors/exceptions.dart';
import 'package:flutterchatapp/core/network/network_info.dart';
import 'package:flutterchatapp/features/data/datasource/chat_local_data.dart';
import 'package:flutterchatapp/features/data/datasource/chat_remote_data.dart';
import 'package:flutterchatapp/features/domain/entities/register.dart';
import 'package:flutterchatapp/features/domain/entities/recover_password.dart';
import 'package:flutterchatapp/features/domain/entities/change_password.dart';
import 'package:flutterchatapp/features/domain/entities/api_success.dart';
import 'package:flutterchatapp/features/data/model/register_model.dart';
import 'package:flutterchatapp/features/data/model/recover_model.dart';
import 'package:flutterchatapp/features/data/model/login_model.dart';
import 'package:flutterchatapp/features/data/model/change_model.dart';
import 'package:flutterchatapp/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutterchatapp/features/domain/repository/chat_repository.dart';

class ChatRepositoryImpl implements ChatRepository {
  final ChatRemoteData remoteData;
  final ChatLocalData localData;
  final NetworkInfo networkInfo;

  ChatRepositoryImpl({
    @required this.remoteData,
    @required this.localData,
    @required this.networkInfo});

  @override
  Future<Either<Failure, ApiSuccess>> loginUser(LoginModel model) async{
    if (await networkInfo.isConnected) {
      try{
        print(model.toJson());
        final response = await remoteData.loginUser(model);
        // localData.cacheUser(model);
        return Right(response);
      } on ServerException{
        return Left(ServerFailure());
      }
      
    } else {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, ApiSuccess>> registerUser(RegisterModel model) async {
    if (await networkInfo.isConnected) {
      try{
        print(model.toJson());
        final response = await remoteData.registerUser(model);
        localData.cacheUser(model);
        return Right(response);
      } on ServerException{
        return Left(ServerFailure());
      }
      
    } else {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, RecoverPassword>> recoverPassword(RecoverModel model) async{
    if (await networkInfo.isConnected) {
      try{
        print(model.toJson());
        final response = await remoteData.recoverPassword(model);
        // localData.cacheUser(model);
        return Right(response);
      } on ServerException{
        return Left(ServerFailure());
      }
      
    } else {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, ChangePassword>> changePassword(ChangeModel model)async {
    if (await networkInfo.isConnected) {
      try{
        print(model.toJson());
        final response = await remoteData.changePassword(model);
        // localData.cacheUser(model);
        return Right(response);
      } on ServerException{
        return Left(ServerFailure());
      }
      
    } else {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Register>> getCacheUser() async{
  try {
      final user = await localData.getUserData();
      return Right(user);
    } on CacheException {
      return Left(CacheFailure());
    }
  }
  
}