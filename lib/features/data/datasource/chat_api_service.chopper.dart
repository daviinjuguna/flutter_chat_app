// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ChatApiService extends ChatApiService {
  _$ChatApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ChatApiService;

  @override
  Future<Response<dynamic>> loginUser(Map<String, dynamic> body) {
    final $url = '/api/login';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> registerUser(Map<String, dynamic> body) {
    final $url = '/api/register';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> refreshToken(Map<String, dynamic> body) {
    final $url = '/api/refresh';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> recoverPassword(Map<String, dynamic> body) {
    final $url = '/api/recover';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> changePassword(Map<String, dynamic> body) {
    final $url = '/api/change';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
