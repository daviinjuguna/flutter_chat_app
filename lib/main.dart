import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterchatapp/injection.dart';
import 'package:injectable/injectable.dart';


void main() async{ 
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness:
        Platform.isAndroid ? Brightness.dark : Brightness.light,
        systemNavigationBarColor: Color(0xffEfc13f),
        systemNavigationBarDividerColor: Color(0xfffd9d00),
        systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'Lets Chat',
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
      home:Scaffold() ,
    );
  }
}