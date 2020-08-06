import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutterchatapp/core/errors/exceptions.dart';
import 'package:flutterchatapp/features/data/datasource/chat_api_service.dart';
import 'package:flutterchatapp/features/data/model/api_success_model.dart';
import 'package:flutterchatapp/features/data/model/change_model.dart';
import 'package:flutterchatapp/features/data/model/change_password_model.dart';
import 'package:flutterchatapp/features/data/model/login_model.dart';
import 'package:flutterchatapp/features/data/model/recover_model.dart';
import 'package:flutterchatapp/features/data/model/recover_password_model.dart';
import 'package:flutterchatapp/features/data/model/register_model.dart';
import 'package:injectable/injectable.dart';

abstract class ChatRemoteData {
  Future<ApiSuccessModel> loginUser(LoginModel model);
  Future<ApiSuccessModel>registerUser(RegisterModel model);
  Future<RecoverPasswordModel>recoverPassword(RecoverModel model);
  Future<ChangePasswordModel>changePassword(ChangeModel model);
  Future<ApiSuccessModel>refreshToken(ApiSuccessModel model);
}

@LazySingleton(as:ChatRemoteData)
class ChatRemoteDataImpl implements ChatRemoteData {
  final ChatApiService service;

  ChatRemoteDataImpl({@required this.service});
  
  @override
  Future<ApiSuccessModel> loginUser(LoginModel model)async {
    final response = await service.loginUser(model.toJson());

     if (response.statusCode == 200) {
      var result = ApiSuccessModel.fromJson(response.body);
      return result;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<ApiSuccessModel> registerUser(RegisterModel model) async{
    final response = await service.registerUser(model.toJson());

    if (response.statusCode == 200) {
      var result = ApiSuccessModel.fromJson(response.body);
      return result;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<RecoverPasswordModel> recoverPassword(RecoverModel model)async {
    final response = await service.recoverPassword(model.toJson());

    if (response.statusCode == 200) {
      var result = RecoverPasswordModel.fromJson(response.body);
      return result;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<ChangePasswordModel> changePassword(ChangeModel model) async{
    final response = await service.changePassword(model.toJson());

    if (response.statusCode == 200) {
      var result = ChangePasswordModel.fromJson(response.body);
      return result;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<ApiSuccessModel> refreshToken(ApiSuccessModel model)async {
    final response = await service.refreshToken(model.refresh_token);

    if (response.statusCode == 200) {
      var result = ApiSuccessModel.fromJson(response.body);
      return result;
    } else {
      throw ServerException();
    }
  }

}