// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ApiService extends ApiService {
  _$ApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiService;

  @override
  Future<Response<dynamic>> loginUser(String email, String password) {
    final $url = '/api/login';
    final $body = <String, dynamic>{'email': email, 'password': password};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request,
        requestConverter: FormUrlEncodedConverter.requestFactory);
  }

  @override
  Future<Response<dynamic>> registerUser(
      String name, String email, String password, String passwordConfirmation) {
    final $url = '/api/register';
    final $body = <String, dynamic>{
      'name': name,
      'email': email,
      'password': password,
      'password_confirmation': passwordConfirmation
    };
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request,
        requestConverter: FormUrlEncodedConverter.requestFactory);
  }

  @override
  Future<Response<dynamic>> logout(String accessToken) {
    final $url = '/api/logout';
    final $headers = {'Authorization': accessToken};
    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> recoverPassword(String email) {
    final $url = '/api/recover';
    final $body = <String, dynamic>{'email': email};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request,
        requestConverter: FormUrlEncodedConverter.requestFactory);
  }

  @override
  Future<Response<dynamic>> changePassword(int pin, String password) {
    final $url = '/api/change';
    final $body = <String, dynamic>{'pin': pin, 'password': password};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request,
        requestConverter: FormUrlEncodedConverter.requestFactory);
  }

  @override
  Future<Response<dynamic>> refreshToken(String refreshToken) {
    final $url = '/api/refresh';
    final $body = <String, dynamic>{'refresh_token': refreshToken};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request,
        requestConverter: FormUrlEncodedConverter.requestFactory);
  }

  @override
  Future<Response<dynamic>> getConversation(String accessToken) {
    final $url = '/api/conversations';
    final $headers = {'Authorization': accessToken};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> postMessage(
      String accessToken, String body, int conversationId) {
    final $url = '/api/messages';
    final $headers = {'Authorization': accessToken};
    final $body = <String, dynamic>{
      'body': body,
      'conversation_id': conversationId
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
