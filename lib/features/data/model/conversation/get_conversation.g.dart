// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetConversation _$GetConversationFromJson(Map<String, dynamic> json) {
  return GetConversation(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : ConversationData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GetConversationToJson(GetConversation instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
