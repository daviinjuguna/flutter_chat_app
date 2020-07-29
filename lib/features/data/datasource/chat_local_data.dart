import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/errors/exceptions.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/features/data/model/login_model.dart';
import 'package:flutterchatapp/features/data/model/register_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ChatLocalData{
  Future<RegisterModel> getUserData();
  // Future<LoginModel> getLoginData();
  Future<void> cacheUser(RegisterModel cacheUser);
}

@LazySingleton(as: ChatLocalData)
class ChatLocalDataImpl implements ChatLocalData {
  final SharedPreferences sharedPreferences;

  ChatLocalDataImpl({@required this.sharedPreferences});
  @override
  Future<void> cacheUser(RegisterModel cacheUser)async {
    String useradded = "added_user";
    sharedPreferences.setString(CACHED_FIRST_TIME, useradded);
    return sharedPreferences.setString(
        CACHED_USER, json.encode(cacheUser.toJson()));

  }

  @override
  Future<RegisterModel> getUserData() {
    final jsonString = sharedPreferences.getString(CACHED_USER);

    if (jsonString != null) {
      return Future.value(RegisterModel.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  // @override
  // Future<LoginModel> getLoginData() {
  //   final jsonString = sharedPreferences.getString(CACHED_USER);

  //   if (jsonString != null) {
  //     return Future.value(LoginModel.fromJson(json.decode(jsonString)));
  //   } else {
  //     throw CacheException();
  //   }
  // }
  
}