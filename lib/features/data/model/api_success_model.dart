import 'package:flutter/material.dart';
import 'package:flutterchatapp/features/domain/entities/api_success.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_success_model.g.dart';

@JsonSerializable()
class ApiSuccessModel extends ApiSuccess {
  final String token_type;
  final int expires_in;
  final String access_token;
  final String refresh_token;

  ApiSuccessModel({
 @required this.token_type,
    @required this.expires_in,
    @required this.access_token,
    @required this.refresh_token,})
    :super(
      token_type:token_type,
      expires_in:expires_in,
      access_token:access_token,
      refresh_token:refresh_token
    );

  factory ApiSuccessModel.fromJson(Map<String, dynamic> json) =>
      _$ApiSuccessModelFromJson(json);

 @override
  List<Object> get props => [
      token_type,
      expires_in,
      access_token,
      refresh_token
  ];

   Map<String, dynamic> toJson() => _$ApiSuccessModelToJson(this);
}