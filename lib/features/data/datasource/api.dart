import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:http/io_client.dart' as http;
import 'package:injectable/injectable.dart';

part 'api.chopper.dart';

@ChopperApi(baseUrl: 'https://0f73eb6a7116.ngrok.io/')
@LazySingleton()
abstract class ApiService extends ChopperService {
  
  @Post(path: 'api/login')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response> loginUser(
    @Field("email") String email,
    @Field("password") String password
  );

  @Post(path: 'api/register')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response> registerUser(
    @Field("name") String name,
    @Field("email") String email,
    @Field("password") String password,
    @Field("password_confirmation") String passwordConfirmation
  );

  @Post(path: 'api/logout')
  Future<Response> logout(
    @Header('Authorization') String accessToken,
    // @Body() Map<String, dynamic> body,
  );

  @Post(path:"api/recover")
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response> recoverPassword(
    @Field("email") String email
  );

  @Post(path:"api/change")
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response>changePassword(
    @Field("pin") int pin,
    @Field("password") String password
  );

  @Post(path:"api/refresh")
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response> refreshToken(
    @Field("refresh_token") String refreshToken
  );

  @Get(path:"api/conversations")
  Future<Response> getConversation(
    @Header("Authorization") String accessToken
  );

  @Post(path: "api/messages")
  Future<Response> postMessage(
    @Header("Authorization") String accessToken,
    @Field("body") String body,
    @Field("conversation_id") int conversationId,
  );

  @factoryMethod
  static ApiService create(){
    final client = ChopperClient(
        // baseUrl: "",
        services: [_$ApiService()],
        converter: JsonConverter(),
        client: http.IOClient(
          HttpClient()..connectionTimeout = const Duration(seconds: 120),
        ),
        interceptors: [
          HeadersInterceptor({'Accept': 'application/json'}),
          HttpLoggingInterceptor()
        ]);
    return _$ApiService(client);
  }
}