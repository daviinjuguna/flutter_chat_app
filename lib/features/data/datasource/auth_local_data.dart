import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/errors/exceptions.dart';
import 'package:flutterchatapp/features/data/model/auth_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalDataSource{
  Future<void> cacheAuthToken(AuthModel model);
  Future<AuthModel> getAuthToken();
  Future<void> deleteCachedToken();
}

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl implements AuthLocalDataSource{

  final SharedPreferences sharedPreferences;

  AuthLocalDataSourceImpl({@required this.sharedPreferences});

  @override
  Future<void> cacheAuthToken(AuthModel model) {
    try {
      return sharedPreferences.setString("access_token", 
      json.encode(model.accessToken));
    } catch (e) {
      throw CacheException();
    }
  }
  
  @override
  Future<AuthModel> getAuthToken(){
    String accessToken = sharedPreferences.getString("access_token");
    if (accessToken != null){
      return Future.value(AuthModel.fromJson(json.decode(accessToken)));
    }else{
      return null;
    }
  }

  @override
  Future<void> deleteCachedToken() {
    String accessToken = sharedPreferences.getString("access_token");
    if (accessToken != null){
      return sharedPreferences.clear();
    }else{
      return null;
    }
  }  
}