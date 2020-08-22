// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostMessageModel _$PostMessageModelFromJson(Map<String, dynamic> json) {
  return PostMessageModel(
    data: json['data'] == null
        ? null
        : MessageData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PostMessageModelToJson(PostMessageModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

MessageData _$MessageDataFromJson(Map<String, dynamic> json) {
  return MessageData(
    body: json['body'] as String,
    read: json['read'] as bool,
    userId: json['user_id'] as int,
    conversationId: json['conversation_id'] as int,
    updatedAt: json['updated_at'] as String,
    createdAt: json['created_at'] as String,
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$MessageDataToJson(MessageData instance) =>
    <String, dynamic>{
      'body': instance.body,
      'read': instance.read,
      'user_id': instance.userId,
      'conversation_id': instance.conversationId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'id': instance.id,
    };
