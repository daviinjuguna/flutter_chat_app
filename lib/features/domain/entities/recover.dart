import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Recover extends Equatable {
  final String email;

  Recover({@required this.email});
  
  @override
  List<Object> get props => [email];
  
}