import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ApiSuccess extends Equatable {
  final String tokenType;
  final int expiresIn;
  final String accessToken;
  final String refreshToken;

  ApiSuccess({
    @required this.tokenType,
    @required this.expiresIn,
    @required this.accessToken,
    @required this.refreshToken});

  @override
  List<Object> get props => [
    tokenType,
    expiresIn,
    accessToken,
    refreshToken
  ];
  
}