import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:http/io_client.dart' as http;

part 'chat_api_service.chopper.dart';

@ChopperApi(baseUrl:"/api")
abstract class ChatApiService extends ChopperService {
  
  @Post(path: "/login")
  Future<Response> loginUser(
    @Body() Map<String, dynamic> body,
  );

  @Post(path: "/register")
  Future<Response> registerUser(
    @Body() Map<String, dynamic> body,
  );

  @Post(path: "/refresh")
  Future<Response> refreshToken(
    @Body() Map<String, dynamic> body,
  );

  @Post(path: "/recover")
  Future<Response> recoverPassword(
    @Body() Map<String, dynamic> body,
  );

  @Post(path: "/change")
  Future<Response> changePassword(
    @Body() Map<String, dynamic> body,
  );

  static ChatApiService create(){
     final client = ChopperClient(
      baseUrl: 'localhost:8000',
      services: [_$ChatApiService()],
      converter: JsonConverter(),
      client: http.IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 60),
      ),
      interceptors: [
        HeadersInterceptor({'Accept': 'application/json'}),
        HttpLoggingInterceptor()
      ]
    );
    return _$ChatApiService(client);
  }
}