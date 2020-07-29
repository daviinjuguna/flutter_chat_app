import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Refresh extends Equatable{
  final String refresh_token;

  Refresh({@required this.refresh_token});

  @override
  List<Object> get props => [refresh_token];
  
}