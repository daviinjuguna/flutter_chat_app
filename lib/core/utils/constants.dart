import 'package:flutter/material.dart';

class Style {
  static final primaryColor = Color(0xfffd9d00);
  static final secondaryColor = Color(0xffEfc13f);
  static final darkColor = Color(0xff151515);
  static final List<Color> gradientColor = [primaryColor,secondaryColor];

  static final TextStyle textStyle = TextStyle(fontSize: 32,fontWeight: FontWeight.w500,color: Colors.white);
}



// const String CACHE_AUTH_TOKEN = "CACHE_AUTH_TOKEN";

// const String ACCESS_TOKEN = "access_token";
// const String REFRESH_TOKEN = "refresh_token";

// const String SERVER_FAILURE_MESSAGE = "Server Failure";
// const String CACHE_FAILURE_MESSAGE = "Cache Failure";
// const String INPUT_FAILURE_MESSAGE = "Input Failure";
// const String PERMISION_DENIED = "please grant permission";
// const String PERMISION_NEVER_ASKED =
//     "permission denied- please enable it from app settings";

const String BASE_URL ="https://6ac1d02b7615.ngrok.io";