import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutterchatapp/core/routes/router.gr.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/core/utils/simple_bloc_observer.dart';
import 'package:flutterchatapp/features/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:flutterchatapp/injection.dart';
import 'package:injectable/injectable.dart';


void main() async{ 
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
    FlutterStatusbarcolor.setNavigationBarWhiteForeground(true);
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     statusBarIconBrightness: Brightness.dark,
    //     statusBarBrightness:
    //     Platform.isAndroid ? Brightness.dark : Brightness.light,
    //     systemNavigationBarColor: Color(0xffEfc13f),
    //     systemNavigationBarDividerColor: Color(0xfffd9d00),
    //     systemNavigationBarIconBrightness: Brightness.dark,
    // ));
    return BlocProvider(
      create: (BuildContext context)=>getIt<AuthBloc>()..add(AuthEvent.started()),
      child: MaterialApp(
        title: 'Lets Chat',
        theme: ThemeData(
          primaryColor: Style.primaryColor,
          primaryColorLight: Colors.white,
          textSelectionColor: Colors.white,
          scaffoldBackgroundColor: Style.darkColor,
          primaryColorBrightness: Brightness.light,
          colorScheme: ColorScheme(
            primary: Color(0xfffd9d00),
            primaryVariant: Color(0xfffd9d10),
            secondary: Color(0xffEfc13f),
            secondaryVariant: Color(0xffEfc12f),
            surface: Colors.white, background: Style.darkColor,
            error: Colors.red, onPrimary: Colors.yellow,
            onSecondary: Colors.yellowAccent, onSurface: Colors.white,
            onBackground: Colors.black, onError:Colors.redAccent,
            brightness: Brightness.light),
        ),
        builder: ExtendedNavigator.builder<Router>(router: Router()),
        debugShowCheckedModeBanner: false,
        
      ),
    );
  }
}