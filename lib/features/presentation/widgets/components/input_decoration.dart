import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/utils/constants.dart';

InputDecoration passwordInputDecoration(
  String lableText,String hintText, Icon prefix,IconButton suffix
){
  return InputDecoration(
    labelText: lableText,
    hintText: hintText,
    labelStyle: TextStyle(color: Colors.white),
    prefixIcon: prefix,
    suffixIcon: suffix,
    filled: false,
    fillColor: Style.secondaryColor,
    hintStyle: TextStyle(color: Style.primaryColor),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide(color: Colors.white)
    ),
  );
}

InputDecoration inputDecoration(
  String lableText,String hintText, Icon prefix,
){
  return InputDecoration(
    labelText: lableText,
    labelStyle: TextStyle(color: Colors.white),
    hintText: hintText,
    prefixIcon: prefix,
    filled: false,
    fillColor: Style.secondaryColor,
    hintStyle: TextStyle(color: Style.primaryColor),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide(color: Colors.white)
    ),
  );
}