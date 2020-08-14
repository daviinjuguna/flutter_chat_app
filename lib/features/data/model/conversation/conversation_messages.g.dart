// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_messages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationMessages _$ConversationMessagesFromJson(Map<String, dynamic> json) {
  return ConversationMessages(
    id: json['id'] as int,
    body: json['body'] as String,
    read: json['read'] as int,
    userId: json['user_id'] as int,
    conversationId: json['conversation_id'] as int,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
  );
}

Map<String, dynamic> _$ConversationMessagesToJson(
        ConversationMessages instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'read': instance.read,
      'user_id': instance.userId,
      'conversation_id': instance.conversationId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
