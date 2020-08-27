import 'package:json_annotation/json_annotation.dart';

part 'message_model.g.dart';

@JsonSerializable()
class MessagesModel {
  int id;
  String body;
  int read;
  @JsonKey(name: 'user_id')
  int userId;
  @JsonKey(name: 'conversation_id')
  int conversationId;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name:'updated_at')
  String updatedAt;

  MessagesModel(
      {this.id,
      this.body,
      this.read,
      this.userId,
      this.conversationId,
      this.createdAt,
      this.updatedAt});

factory MessagesModel.fromJson(Map<String, dynamic> json) =>
      _$MessagesModelFromJson(json);

  Map<String, dynamic> toJson() => _$MessagesModelToJson(this);
}