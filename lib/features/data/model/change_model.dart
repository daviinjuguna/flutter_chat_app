import 'package:flutter/material.dart';
import 'package:flutterchatapp/features/domain/entities/change.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_model.g.dart';

@JsonSerializable()
class ChangeModel extends Change {
  final int pin;
  final String password;

  ChangeModel({
    @required this.pin, 
    @required this.password}):super(pin:pin,password:password);

  @override
  List<Object> get props => [pin,password];

  factory ChangeModel.fromJson(Map<String, dynamic> json) =>
      _$ChangeModelFromJson(json);
  
  Map<String, dynamic> toJson() => _$ChangeModelToJson(this);
}