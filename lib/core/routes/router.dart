import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutterchatapp/features/presentation/pages/chat/chat_page.dart';
import 'package:flutterchatapp/features/presentation/pages/dashboard/dashboard_page.dart';
import 'package:flutterchatapp/features/presentation/pages/intro/intro_page.dart';
import 'package:flutterchatapp/features/presentation/pages/intro/splash_page.dart';
import 'package:flutterchatapp/features/presentation/pages/login/login_page.dart';
import 'package:flutterchatapp/features/presentation/pages/register/register_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    CupertinoRoute(page: SplashPage, initial: true),
    CupertinoRoute(page: IntroPage,),
    MaterialRoute(page: LoginPage),
    MaterialRoute(page: RegisterPage),
    CupertinoRoute(page: DashBoardPage),
    MaterialRoute(page: ChatPage)
  ]
)


class $Router {
  
}