// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recover_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecoverPasswordModel _$RecoverPasswordModelFromJson(Map<String, dynamic> json) {
  return RecoverPasswordModel(
    pin: json['pin'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$RecoverPasswordModelToJson(
        RecoverPasswordModel instance) =>
    <String, dynamic>{
      'pin': instance.pin,
      'message': instance.message,
    };
