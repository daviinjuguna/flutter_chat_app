import 'package:flutterchatapp/features/data/model/messages/message_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'messages.g.dart';
@JsonSerializable()
class Messages {
  MessageData data;

  Messages({this.data});

    factory Messages.fromJson(Map<String, dynamic> json) =>
      _$MessagesFromJson(json);

  Map<String, dynamic> toJson() => _$MessagesToJson(this);
}