// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageData _$MessageDataFromJson(Map<String, dynamic> json) {
  return MessageData(
    body: json['body'] as String,
    read: json['read'] as bool,
    userId: json['user_id'] as String,
    conversationId: json['conversation_id'] as String,
    updatedAt: json['created_at'] as String,
    createdAt: json['updated_at'] as String,
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$MessageDataToJson(MessageData instance) =>
    <String, dynamic>{
      'body': instance.body,
      'read': instance.read,
      'user_id': instance.userId,
      'conversation_id': instance.conversationId,
      'created_at': instance.updatedAt,
      'updated_at': instance.createdAt,
      'id': instance.id,
    };
