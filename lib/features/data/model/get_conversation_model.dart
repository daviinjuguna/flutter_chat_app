import 'package:json_annotation/json_annotation.dart';

part 'get_conversation_model.g.dart';

@JsonSerializable()
class GetConversationModel {
  List<Data> data;

  GetConversationModel({this.data});

  factory GetConversationModel.fromJson(Map<String, dynamic> json) =>
      _$GetConversationModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetConversationModelToJson(this);
}

@JsonSerializable()
class Data {
  int id;
  @JsonKey(name: 'created_at')
  String createdAt;
  User user;
  List<Messages> messages;

  Data({this.id, this.createdAt, this.user, this.messages});

   factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class User {
  int id;
  String name;
  String email;
  

  User({this.id, this.name, this.email,});

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Messages {
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

  Messages(
      {this.id,
      this.body,
      this.read,
      this.userId,
      this.conversationId,
      this.createdAt,
      this.updatedAt});

  factory Messages.fromJson(Map<String, dynamic> json) =>
      _$MessagesFromJson(json);

  Map<String, dynamic> toJson() => _$MessagesToJson(this);
}