import 'package:json_annotation/json_annotation.dart';

part 'get_conversation_model.g.dart';

@JsonSerializable()
class GetConversationModel {
  @JsonKey(name: "data")
  List<ConversationData> data;

  GetConversationModel({this.data});

  factory GetConversationModel.fromJson(Map<String, dynamic> json) =>
      _$GetConversationModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetConversationModelToJson(this);
}

@JsonSerializable()
class ConversationData {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: "user")
  User user;
  @JsonKey(name: "messages")
  List<Messages> messages;

  ConversationData({this.id, this.createdAt, this.user, this.messages});

   factory ConversationData.fromJson(Map<String, dynamic> json) =>
      _$ConversationDataFromJson(json);

  Map<String, dynamic> toJson() => _$ConversationDataToJson(this);
}

@JsonSerializable()
class User {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "email")
  String email;
  @JsonKey(name: "picture")
  String imageUrl;
  

  User({this.id, this.name, this.email,this.imageUrl});

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Messages {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "body")
  String body;
  @JsonKey(name: "read")
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