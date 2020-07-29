import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Register extends Equatable {
  final String name;
  final String email;
  final String password;
  final String password_confirmation;

  Register({
    @required this.name,
    @required this.email,
    @required this.password,
    @required this.password_confirmation,
  });

  @override
  List<Object> get props => [
    name,email,password,password_confirmation
  ];
}