import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:http/io_client.dart' as http;
import 'package:injectable/injectable.dart';

part 'chat_api_service.chopper.dart';

@LazySingleton()
@ChopperApi(baseUrl:"/api")
abstract class ChatApiService extends ChopperService {
  
  @Post(path: "/login")
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response> loginUser(
    @Body() Map<String, dynamic> body,
  );

  @Post(path: "/register")
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response> registerUser(
    @Body() Map<String, dynamic> body,
  );

  @Post(path: "/refresh")
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response> refreshToken(
    @Field('refresh_token') String refreshToken,
  );

  @Post(path: "/recover")
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response> recoverPassword(
    @Body() Map<String, dynamic> body,
  );

  @Post(path: "/change")
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response> changePassword(
    @Body() Map<String, dynamic> body,
  );

  @factoryMethod
  static ChatApiService create(){
     final client = ChopperClient(
      baseUrl: 'localhost:8000',
      services: [_$ChatApiService()],
      converter: JsonConverter(),
      client: http.IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 60),
      ),
      interceptors: [
        HeadersInterceptor({
          'Accept': 'application/json',
          // 'Authorization':'Bearer $accessToken'
        }),
        HttpLoggingInterceptor()
      ]
    );
    return _$ChatApiService(client);
  }
}