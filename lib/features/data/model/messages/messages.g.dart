// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Messages _$MessagesFromJson(Map<String, dynamic> json) {
  return Messages(
    data: json['data'] == null
        ? null
        : MessageData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MessagesToJson(Messages instance) => <String, dynamic>{
      'data': instance.data,
    };
