// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessagesModel _$MessagesModelFromJson(Map<String, dynamic> json) {
  return MessagesModel(
    id: json['id'] as int,
    body: json['body'] as String,
    read: json['read'] as int,
    userId: json['user_id'] as int,
    conversationId: json['conversation_id'] as int,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
  );
}

Map<String, dynamic> _$MessagesModelToJson(MessagesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'read': instance.read,
      'user_id': instance.userId,
      'conversation_id': instance.conversationId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
