import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class RecoverPassword extends Equatable {
  final int pin;
  final String message;

  RecoverPassword({
    @required this.pin, 
    @required this.message});

  @override
  List<Object> get props => [
    pin,message
  ];
  
}