// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeModel _$ChangeModelFromJson(Map<String, dynamic> json) {
  return ChangeModel(
    pin: json['pin'] as int,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$ChangeModelToJson(ChangeModel instance) =>
    <String, dynamic>{
      'pin': instance.pin,
      'password': instance.password,
    };
