// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/presentation/pages/chat/chat_page.dart';
import '../../features/presentation/pages/dashboard/dashboard_page.dart';
import '../../features/presentation/pages/intro/intro_page.dart';
import '../../features/presentation/pages/intro/splash_page.dart';
import '../../features/presentation/pages/login/login_page.dart';
import '../../features/presentation/pages/register/register_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String introPage = '/intro-page';
  static const String loginPage = '/login-page';
  static const String registerPage = '/register-page';
  static const String dashBoardPage = '/dash-board-page';
  static const String chatPage = '/chat-page';
  static const all = <String>{
    splashPage,
    introPage,
    loginPage,
    registerPage,
    dashBoardPage,
    chatPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.introPage, page: IntroPage),
    RouteDef(Routes.loginPage, page: LoginPage),
    RouteDef(Routes.registerPage, page: RegisterPage),
    RouteDef(Routes.dashBoardPage, page: DashBoardPage),
    RouteDef(Routes.chatPage, page: ChatPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    IntroPage: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => IntroPage(),
        settings: data,
      );
    },
    LoginPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginPage(),
        settings: data,
      );
    },
    RegisterPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RegisterPage(),
        settings: data,
      );
    },
    DashBoardPage: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => DashBoardPage(),
        settings: data,
      );
    },
    ChatPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChatPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushIntroPage() => push<dynamic>(Routes.introPage);

  Future<dynamic> pushLoginPage() => push<dynamic>(Routes.loginPage);

  Future<dynamic> pushRegisterPage() => push<dynamic>(Routes.registerPage);

  Future<dynamic> pushDashBoardPage() => push<dynamic>(Routes.dashBoardPage);

  Future<dynamic> pushChatPage() => push<dynamic>(Routes.chatPage);
}
