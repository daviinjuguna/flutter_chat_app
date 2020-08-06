// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_success_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiSuccessModel _$ApiSuccessModelFromJson(Map<String, dynamic> json) {
  return ApiSuccessModel(
    token_type: json['token_type'] as String,
    expires_in: json['expires_in'] as int,
    access_token: json['access_token'] as String,
    refresh_token: json['refresh_token'] as String,
  );
}

Map<String, dynamic> _$ApiSuccessModelToJson(ApiSuccessModel instance) =>
    <String, dynamic>{
      'token_type': instance.token_type,
      'expires_in': instance.expires_in,
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
    };
