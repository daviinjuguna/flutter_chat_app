import 'package:json_annotation/json_annotation.dart';

part 'post_message_model.g.dart';

@JsonSerializable()
class PostMessageModel {
  MessageData data;

  PostMessageModel({this.data});

  factory PostMessageModel.fromJson(Map<String, dynamic> json) =>
      _$PostMessageModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostMessageModelToJson(this);
}

@JsonSerializable()
class MessageData {
  String body;
  bool read;
  @JsonKey(name: 'user_id')
  int userId;
  @JsonKey(name: 'conversation_id')
  int conversationId;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name:'updated_at')
  String updatedAt;
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