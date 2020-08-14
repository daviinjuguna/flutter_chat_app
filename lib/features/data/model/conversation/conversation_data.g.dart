// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationData _$ConversationDataFromJson(Map<String, dynamic> json) {
  return ConversationData(
    id: json['id'] as int,
    createdAt: json['created_at'] as String,
    messages: (json['messages'] as List)
        ?.map((e) => e == null
            ? null
            : ConversationMessages.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ConversationDataToJson(ConversationData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'messages': instance.messages,
    };
