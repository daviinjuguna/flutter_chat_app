import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/errors/exceptions.dart';
import 'package:flutterchatapp/core/network/network_info.dart';
import 'package:flutterchatapp/features/data/datasource/auth_local_data.dart';
import 'package:flutterchatapp/features/data/datasource/auth_remote_data.dart';
import 'package:flutterchatapp/features/data/model/api_success_model.dart';
import 'package:flutterchatapp/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutterchatapp/features/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as:AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthLocalDataSource localDataSource;
  final AuthRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl({
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.networkInfo});

  @override
  Future<Either<Failure, ApiSuccessModel>> loginUser(String email, String password) async{
    if (await networkInfo.isConnected) {
      try {
        final loginSuccessModel = await remoteDataSource.loginUser(email, password);
        localDataSource.cacheAuthToken(loginSuccessModel.data);
        ApiSuccessModel apiSuccessModel = new ApiSuccessModel(success: true, message: "Login success");
        return Right(apiSuccessModel);
      } on ServerException {
        return Left(ServerFailure());
      } on CacheException{
        return Left(CacheFailure());
      }
    } else{
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, ApiSuccessModel>> registerUser(String name, String email, String password, String passwordConfirmation) async{
    if (await networkInfo.isConnected) {
      try {
        final registerSuccessModel = await remoteDataSource.registerUser(name, email, password, passwordConfirmation);
        localDataSource.cacheAuthToken(registerSuccessModel.data);
        ApiSuccessModel apiSuccessModel = new ApiSuccessModel(success: true, message: "Register success");
        return Right(apiSuccessModel);
      } on ServerException {
        return Left(ServerFailure());
      } on CacheException{
        return Left(CacheFailure());
      }
    }else{
      return Left(ServerFailure());
    }
  }
}