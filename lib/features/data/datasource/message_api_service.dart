import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:http/io_client.dart' as http;

part 'message_api_service.chopper.dart';

@LazySingleton()
@ChopperApi(baseUrl:"/api")
abstract class MessageApiService extends ChopperService {

  @factoryMethod
  static MessageApiService create(@Named('accessToken') String accessToken){
     final client = ChopperClient(
      baseUrl: 'localhost:8000',
      services: [_$MessageApiService()],
      converter: JsonConverter(),
      client: http.IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 60),
      ),
      interceptors: [
        HeadersInterceptor({
          'Accept': 'application/json',
          'Authorization':'Bearer $accessToken'
        }),
        HttpLoggingInterceptor()
      ]
    );
    return _$MessageApiService(client);
  }  
}