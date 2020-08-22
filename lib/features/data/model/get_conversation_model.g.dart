// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_conversation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetConversationModel _$GetConversationModelFromJson(Map<String, dynamic> json) {
  return GetConversationModel(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : ConversationData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GetConversationModelToJson(
        GetConversationModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

ConversationData _$ConversationDataFromJson(Map<String, dynamic> json) {
  return ConversationData(
    id: json['id'] as int,
    createdAt: json['created_at'] as String,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    messages: (json['messages'] as List)
        ?.map((e) =>
            e == null ? null : Messages.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ConversationDataToJson(ConversationData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'user': instance.user,
      'messages': instance.messages,
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as int,
    name: json['name'] as String,
    email: json['email'] as String,
    imageUrl: json['picture'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'picture': instance.imageUrl,
    };

Messages _$MessagesFromJson(Map<String, dynamic> json) {
  return Messages(
    id: json['id'] as int,
    body: json['body'] as String,
    read: json['read'] as int,
    userId: json['user_id'] as int,
    conversationId: json['conversation_id'] as int,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
  );
}

Map<String, dynamic> _$MessagesToJson(Messages instance) => <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'read': instance.read,
      'user_id': instance.userId,
      'conversation_id': instance.conversationId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
