import 'package:dio/dio.dart';
import 'package:flutterchatapp/core/errors/ServerFailure.dart';
import 'package:flutterchatapp/features/data/datasource/rest_client.dart';
import 'package:flutterchatapp/features/data/model/auth_model.dart';
import 'package:flutterchatapp/features/data/model/change_password_model.dart';
import 'package:flutterchatapp/features/data/model/recover_password_model.dart';
import 'package:flutterchatapp/features/domain/entities/base_model.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRemoteDataSource{
  Future<BaseModel<AuthModel>> loginUser(String email,String password);
  Future<BaseModel<AuthModel>> registerUser(
    String name,
    String email,
    String password,
    String passwordConfirmation);
  Future<BaseModel<RecoverPasswordModel>> recoverPassword(String email,);
  Future<BaseModel<ChangePasswordModel>> changePassword(int pin,String password);
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource{
  Dio dio;
  RestClient client;

  AuthRemoteDataSourceImpl(){
    dio = new Dio();
    client = new RestClient(dio);
  }
  
  @override
  Future<BaseModel<AuthModel>> loginUser(String email, String password) async{
    AuthModel response;
    try {
      response = await client.loginUser(email, password);
    } catch (error,stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return BaseModel()..setException(ServerError.withError(error:error));
    }
    return BaseModel()..data = response;
  }

  @override
  Future<BaseModel<AuthModel>> registerUser(String name, String email, String password, String passwordConfirmation) async{
    AuthModel response;
    try {
      response = await client.registerUser(name, email, password, passwordConfirmation);
    } catch (error,stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return BaseModel()..setException(ServerError.withError(error:error));
    }
    return BaseModel()..data = response;
  }

  @override
  Future<BaseModel<RecoverPasswordModel>> recoverPassword(String email) async{
    RecoverPasswordModel response;
    try {
      response = await client.recoverPassword(email);
    } catch (error,stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return BaseModel()..setException(ServerError.withError(error:error));
    }
    return BaseModel()..data = response;
  }

  @override
  Future<BaseModel<ChangePasswordModel>> changePassword(int pin, String password) async{
    ChangePasswordModel response;
    try {
      response = await client.changePassword(pin, password);
    } catch (error,stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return BaseModel()..setException(ServerError.withError(error:error));
    }
    return BaseModel()..data = response;
  }
}