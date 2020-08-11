import 'package:json_annotation/json_annotation.dart';

part 'change_password_model.g.dart';

@JsonSerializable()
class ChangePasswordModel {

  @JsonKey(name:"success")
  String success;
  @JsonKey(name: "message")
  String message;

  ChangePasswordModel({this.success, this.message});

  factory ChangePasswordModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChangePasswordModelToJson(this);
}