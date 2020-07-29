import 'package:flutter/material.dart';
import 'package:flutterchatapp/features/domain/entities/api_success.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_success_model.g.dart';

@JsonSerializable()
class ApiSuccessModel extends ApiSuccess {
  final String tokenType;
  final int expiresIn;
  final String accessToken;
  final String refreshToken;

  ApiSuccessModel({
    @required this.tokenType,
    @required this.expiresIn,
    @required this.accessToken,
    @required this.refreshToken})
    :super(
      tokenType:tokenType,
      expiresIn:expiresIn,
      accessToken:accessToken,
      refreshToken:refreshToken
    );

  factory ApiSuccessModel.fromJson(Map<String, dynamic> json) =>
      _$ApiSuccessModelFromJson(json);

  @override
  List<Object> get props => [
    tokenType,
    expiresIn,
    accessToken,
    refreshToken
  ];

   Map<String, dynamic> toJson() => _$ApiSuccessModelToJson(this);
}