import 'package:flutter/material.dart';
import 'package:flutterchatapp/features/domain/entities/register.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.g.dart';

@JsonSerializable()
class RegisterModel extends Register {
  final String name;
  final String email;
  final String password;
  final String password_confirmation;

  RegisterModel({
    @required this.name,
    @required this.email,
    @required this.password,
    @required this.password_confirmation,
  }):super(
    name:name,
    email:email,
    password:password,
    password_confirmation:password_confirmation
  );

  @override
  List<Object> get props => [
    name,email,password,password_confirmation
  ];

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
  
  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);
}