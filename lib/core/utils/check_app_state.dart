import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants.dart';

@LazySingleton()
class CheckAppState {
  final SharedPreferences sharedPreferences;

  CheckAppState({@required this.sharedPreferences});

  Future<bool> checkFirstTimeLogin() async {
    String firsttime = sharedPreferences.getString(CACHED_FIRST_TIME);

    if (firsttime != null) {
      return false;
    } else {
      return true;
    }
  }

  Future<bool> userLoggedIn() async {
    final user = sharedPreferences.getString(CACHED_USER);
    if (user != null) {
      return true;
    } else {
      return false;
    }
  }
}
