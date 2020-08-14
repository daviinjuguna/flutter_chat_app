import 'package:flutterchatapp/features/data/model/conversation/conversation_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_conversation.g.dart';
@JsonSerializable()
class GetConversation {
  List<ConversationData> data;

  GetConversation({this.data});

 factory GetConversation.fromJson(Map<String, dynamic> json) =>
      _$GetConversationFromJson(json);

  Map<String, dynamic> toJson() => _$GetConversationToJson(this);
}