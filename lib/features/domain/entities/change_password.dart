import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ChangePassword extends Equatable {
  final String success;
  final String message;

  ChangePassword({@required this.success, @required this.message});

  @override
  List<Object> get props => [message,success];
}