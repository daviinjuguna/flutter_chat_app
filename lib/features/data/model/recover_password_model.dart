import 'package:json_annotation/json_annotation.dart';

part 'recover_password_model.g.dart';

@JsonSerializable()
class RecoverPasswordModel {

  @JsonKey(name:"pin")
  int pin;
  @JsonKey(name: "message")
  String message;

  RecoverPasswordModel({this.pin, this.message});

  factory RecoverPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$RecoverPasswordModelFromJson(json);

  Map<String, dynamic> toJson() => _$RecoverPasswordModelToJson(this);
}