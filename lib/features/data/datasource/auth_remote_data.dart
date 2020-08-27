import 'package:flutter/material.dart';
import 'package:flutterchatapp/features/data/model/conversation/conversation_model.dart';
import 'package:flutterchatapp/features/data/model/conversation/message_model.dart';
import 'package:injectable/injectable.dart';

import '../../../core/errors/exceptions.dart';
import '../model/auth_model.dart';
import '../model/change_password_model.dart';
import '../model/recover_password_model.dart';
import 'api.dart';

abstract class AuthRemoteDataSource{
  // Future<BaseModel<AuthModel>> loginUser(String email,String password);
  Future<AuthModel> loginUser(String email,String password);
  Future<AuthModel> registerUser(
    String name,
    String email,
    String password,
    String passwordConfirmation);
  Future<RecoverPasswordModel> recoverPassword(String email,);
  Future<ChangePasswordModel> changePassword(int pin,String password);
  Future<void>logout(AuthModel model);
  Future<AuthModel> refreshToken(AuthModel model);
  Future<List<ConversationModel>> getConversation(AuthModel model);
  Future<MessagesModel>postMessage(AuthModel model,String body,int conversationId);
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource{
  
  final ApiService service;

  AuthRemoteDataSourceImpl({@required this.service});

  @override
  Future<AuthModel> loginUser(String email, String password) async{
    final response = await service.loginUser(email, password);
    if (response.statusCode == 200) {
      return AuthModel.fromJson(response.body);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<AuthModel> registerUser(String name, String email, String password, String passwordConfirmation) async{
    final response = await service.registerUser(name, email, password, passwordConfirmation);
    if (response.statusCode == 201) {//user created
      return AuthModel.fromJson(response.body);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<RecoverPasswordModel> recoverPassword(String email) async{
    final response = await service.recoverPassword(email);
    if (response.statusCode == 200) {
      return RecoverPasswordModel.fromJson(response.body);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<ChangePasswordModel> changePassword(int pin, String password) async{
   final response = await service.changePassword(pin, password);
   if (response.statusCode == 200) {
      return ChangePasswordModel.fromJson(response.body);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<void> logout(AuthModel model) async{
   final response = await service.logout('Bearer ${model.accessToken}');
   if (response.statusCode == 204) {
      return "Logout Success";
    }else if (response.statusCode == 401) {
      throw UnAuthenticatedException();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<AuthModel> refreshToken(AuthModel model) async{
    final response = await service.refreshToken(model.refreshToken);
    if (response.statusCode == 200) {
      return AuthModel.fromJson(response.body);
    }else if (response.statusCode == 401) {
      throw UnAuthenticatedException();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<ConversationModel>> getConversation(AuthModel model)async{
    final response = await service.getConversation('Bearer ${model.accessToken}');
   if (response.statusCode == 200) {
     List<ConversationModel> conversationModel=[];
     try {
       conversationModel = (response.body as List)
          .map((e) => ConversationModel.fromJson(e))
          .toList();
     } catch (e) {
       print(e.toString());
     }
     return conversationModel;

    }else if (response.statusCode == 401) {
      throw UnAuthenticatedException();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<MessagesModel> postMessage(AuthModel model, String body, int conversationId)async {
    final response = await service.postMessage(
      'Bearer ${model.accessToken}',
      body,
      conversationId
    );
    if (response.statusCode == 200) {//created response
      return MessagesModel.fromJson(response.body);
    }else if (response.statusCode == 401) {
      throw UnAuthenticatedException();
    } else {
      throw ServerException();
    }
  }
}