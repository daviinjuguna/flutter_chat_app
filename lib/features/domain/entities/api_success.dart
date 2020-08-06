import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ApiSuccess extends Equatable {
  final String token_type;
  final int expires_in;
  final String access_token;
  final String refresh_token;

  ApiSuccess({
    @required this.token_type,
    @required this.expires_in,
    @required this.access_token,
    @required this.refresh_token,});

  @override
  List<Object> get props => [
      token_type,
      expires_in,
      access_token,
      refresh_token
  ];
  
}