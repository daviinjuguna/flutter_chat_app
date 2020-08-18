import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/errors/failures.dart';
import 'package:flutterchatapp/core/network/network_info.dart';
import 'package:flutterchatapp/features/data/datasource/auth_local_data.dart';
import 'package:flutterchatapp/features/data/datasource/auth_remote_data.dart';
import 'package:flutterchatapp/features/data/model/get_conversation_model.dart';
import 'package:flutterchatapp/features/domain/repository/chat_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ChatRepository)
class ChatRepositoryImp implements ChatRepository {
  final AuthLocalDataSource localDataSource;
  final AuthRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  ChatRepositoryImp({
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.networkInfo});

  
  @override
  Future<Either<Failure, GetConversationModel>> getConversation() async{
    final accessToken = localDataSource.getAuthToken();
    if (accessToken != null) {
      if (await networkInfo.isConnected) {
        final conversation = await remoteDataSource.getConversation(await accessToken);
        //TODO implement local data source;
        return Right(conversation);
      } else {
        return Left(ServerFailure());
      }
    } else {
      return Left(UnAuthenticatedFailure());
    }
  }
  
}