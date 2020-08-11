import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class InjectionModule {

  //injecting third party libraries

  @lazySingleton
  DataConnectionChecker get dataConnectionChecker => DataConnectionChecker();

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @Named("BaseUrl")
  String get baseUrl => 'https://fde627d32ed7.ngrok.io/';
  
  // url here will be injected 
  @lazySingleton
  Dio dio(@Named('BaseUrl') String baseUrl) => Dio(BaseOptions(baseUrl: baseUrl));
  
}