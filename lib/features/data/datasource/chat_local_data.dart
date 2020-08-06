import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/errors/exceptions.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/features/data/model/api_success_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ChatLocalData{
  Future<void> cacheAuthToken(ApiSuccessModel model);
  Future<ApiSuccessModel> getAuthToken();
  Future<void> cacheAccessToken(ApiSuccessModel model);
  Future<ApiSuccessModel> getAccessToken();
}

@LazySingleton(as: ChatLocalData)
class ChatLocalDataImpl implements ChatLocalData {
  final SharedPreferences sharedPreferences;

  ChatLocalDataImpl({@required this.sharedPreferences});

  @override
  Future<void> cacheAuthToken(ApiSuccessModel model) {
        try {
      return sharedPreferences.setString(
        CACHE_AUTH_TOKEN,
        json.encode(model.toJson()),
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<ApiSuccessModel> getAuthToken() {
    String authObject = sharedPreferences.getString(CACHE_AUTH_TOKEN);
    if (authObject != null) {
      return Future.value(ApiSuccessModel.fromJson(json.decode(authObject)));
    } else {
      return null;
    }
  }

  @override
  Future<void> cacheAccessToken(ApiSuccessModel model) {
    try {
      return sharedPreferences.setString(ACCESS_TOKEN, json.encode(model.access_token));
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<ApiSuccessModel> getAccessToken() {
    String accessToken = sharedPreferences.getString(ACCESS_TOKEN);
    if(accessToken != null){
      return Future.value(ApiSuccessModel.fromJson(json.decode(accessToken)));
    }else{
      return null;
    }
  }

}