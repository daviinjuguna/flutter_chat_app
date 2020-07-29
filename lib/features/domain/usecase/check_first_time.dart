import 'package:flutterchatapp/core/utils/check_app_state.dart';
import 'package:meta/meta.dart';

class CheckFirstTime {
  final CheckAppState appState;

  CheckFirstTime({@required this.appState});

  Future<bool> call() {
    return appState.checkFirstTimeLogin();
  }
}
