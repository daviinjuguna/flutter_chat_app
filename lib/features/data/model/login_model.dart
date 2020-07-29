import 'package:flutter/material.dart';
import 'package:flutterchatapp/features/domain/entities/login.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel extends Login {
  final String email;
  final String password;

  LoginModel({@required this.email, @required this.password}):super(email:email,password:password);

  @override
  List<Object> get props => [email,password];

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
  
  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}