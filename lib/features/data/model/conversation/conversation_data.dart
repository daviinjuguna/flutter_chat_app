import 'package:flutterchatapp/features/data/model/conversation/conversation_messages.dart';
import 'package:json_annotation/json_annotation.dart';

part 'conversation_data.g.dart';

@JsonSerializable()
class ConversationData {
  int id;

  @JsonKey(name: 'created_at')
  String createdAt;

  List<ConversationMessages> messages;

  ConversationData({this.id, this.createdAt, this.messages});

  
 factory ConversationData.fromJson(Map<String, dynamic> json) =>
      _$ConversationDataFromJson(json);

  Map<String, dynamic> toJson() => _$ConversationDataToJson(this);
}
