import 'package:flutter/material.dart';
import 'package:flutterchatapp/features/domain/entities/change_password.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_model.g.dart';

@JsonSerializable()
class ChangePasswordModel extends ChangePassword {
  final String success;
  final String message;

  ChangePasswordModel({@required this.success, @required this.message})
  :super(message:message,
  success:success);

  @override
  List<Object> get props => [message,success];

  factory ChangePasswordModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordModelFromJson(json);
  
  Map<String, dynamic> toJson() => _$ChangePasswordModelToJson(this);
}