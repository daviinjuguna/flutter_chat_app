import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Change extends Equatable {
  final int pin;
  final String password;

  Change({
    @required this.pin, 
    @required this.password});

  @override
  List<Object> get props => [pin,password];
  
}