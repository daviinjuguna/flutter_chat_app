import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutterchatapp/features/data/datasource/chat_local_data.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class InjectionModule {

  //injecting third party libraries

  @lazySingleton
  DataConnectionChecker get dataConnectionChecker => DataConnectionChecker();

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @Named('accessToken')
  String get accessToken =>"myTokens" ;
  
}