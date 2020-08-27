import 'package:flutterchatapp/features/data/model/conversation/message_model.dart';
import 'package:flutterchatapp/features/data/model/conversation/user_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'conversation_model.g.dart';

@JsonSerializable()
class ConversationModel {
  int id;
  @JsonKey(name: "created_at")
  String createdAt;
  UserModel user;
  List<MessagesModel> messages;

  ConversationModel({this.id, this.createdAt, this.user, this.messages});

  factory ConversationModel.fromJson(Map<String, dynamic> json) =>
      _$ConversationModelFromJson(json);

  Map<String, dynamic> toJson() => _$ConversationModelToJson(this);
}