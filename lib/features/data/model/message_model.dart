import 'package:json_annotation/json_annotation.dart';
part 'message_model.g.dart';
@JsonSerializable()
class MessageModel {
  Data data;

  MessageModel({this.data});

 factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  Map<String, dynamic> toJson() => _$MessageModelToJson(this);
}

@JsonSerializable()
class Data {
  int id;
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

  Data(
      {this.body,
      this.read,
      this.userId,
      this.conversationId,
      this.updatedAt,
      this.createdAt,
      this.id});

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}