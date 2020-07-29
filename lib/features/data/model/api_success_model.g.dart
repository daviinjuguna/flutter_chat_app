// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_success_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiSuccessModel _$ApiSuccessModelFromJson(Map<String, dynamic> json) {
  return ApiSuccessModel(
    tokenType: json['tokenType'] as String,
    expiresIn: json['expiresIn'] as int,
    accessToken: json['accessToken'] as String,
    refreshToken: json['refreshToken'] as String,
  );
}

Map<String, dynamic> _$ApiSuccessModelToJson(ApiSuccessModel instance) =>
    <String, dynamic>{
      'tokenType': instance.tokenType,
      'expiresIn': instance.expiresIn,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
