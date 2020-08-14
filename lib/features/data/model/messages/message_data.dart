import 'package:json_annotation/json_annotation.dart';

part 'message_data.g.dart';
@JsonSerializable()
class MessageData {
  String body;
  bool read;

  @JsonKey(name:'user_id')
  String userId;
  @JsonKey(name: 'conversation_id')
  String conversationId;
  @JsonKey(name: 'created_at')
  String updatedAt;
  @JsonKey(name: 'updated_at')
  String createdAt;
  int id;

  MessageData(
      {this.body,
      this.read,
      this.userId,
      this.conversationId,
      this.updatedAt,
      this.createdAt,
      this.id});

  factory MessageData.fromJson(Map<String, dynamic> json) =>
      _$MessageDataFromJson(json);

  Map<String, dynamic> toJson() => _$MessageDataToJson(this);
}