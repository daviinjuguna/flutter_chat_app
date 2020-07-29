import 'package:flutter/material.dart';
import 'package:flutterchatapp/features/domain/entities/recover.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recover_model.g.dart';

@JsonSerializable()
class RecoverModel extends Recover {
  final String email;

  RecoverModel({@required this.email}):super(email:email);
  
  @override
  List<Object> get props => [email];

    factory RecoverModel.fromJson(Map<String, dynamic> json) =>
      _$RecoverModelFromJson(json);
  
  Map<String, dynamic> toJson() => _$RecoverModelToJson(this);
}