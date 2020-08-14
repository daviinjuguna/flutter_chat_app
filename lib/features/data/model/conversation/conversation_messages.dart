import 'package:json_annotation/json_annotation.dart';

part 'conversation_messages.g.dart';
@JsonSerializable()
class ConversationMessages {
  int id;
  String body;
  int read;

  @JsonKey(name: 'user_id')
  int userId;
  @JsonKey(name: 'conversation_id')
  int conversationId;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;

  ConversationMessages(
      {this.id,
      this.body,
      this.read,
      this.userId,
      this.conversationId,
      this.createdAt,
      this.updatedAt});

 factory ConversationMessages.fromJson(Map<String, dynamic> json) =>
      _$ConversationMessagesFromJson(json);

  Map<String, dynamic> toJson() => _$ConversationMessagesToJson(this);
}