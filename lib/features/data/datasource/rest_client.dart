import 'package:flutterchatapp/features/data/model/auth_model.dart';
import 'package:flutterchatapp/features/data/model/change_password_model.dart';
import 'package:flutterchatapp/features/data/model/recover_password_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://e7ba0ac93eff.ngrok.io")
@LazySingleton()
abstract class RestClient {

  @factoryMethod
   factory RestClient(Dio dio){
    // dio.options = BaseOptions(receiveTimeout: 5000, connectTimeout: 5000);
    dio.options.headers["Accept"] = "application/json";
    return _RestClient(dio, baseUrl:"https://e7ba0ac93eff.ngrok.io");
  }
  
  @POST("/api/login")
  @FormUrlEncoded()
  Future<AuthModel> loginUser(
    @Field("email") String email,
    @Field("password") String password
  );

  @POST("/api/register")
  @FormUrlEncoded()
  Future<AuthModel> registerUser(
    @Field("name") String name,
    @Field("email") String email,
    @Field("password") String password,
    @Field("password_confirmation") String passwordConfirmation
  );

  @POST("/api/recover")
  @FormUrlEncoded()
  Future<RecoverPasswordModel> recoverPassword(
    @Field("email") String email
  );

  @POST("/api/change")
  @FormUrlEncoded()
  Future<ChangePasswordModel>changePassword(
    @Field("pin") int pin,
    @Field("password") String password
  );

  @POST("/api/refresh")
  @FormUrlEncoded()
  Future<AuthModel> refreshToken(
    @Field("refresh_token") String refreshToken
  );
}
