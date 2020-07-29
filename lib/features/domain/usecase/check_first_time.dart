import 'package:flutterchatapp/core/utils/check_app_state.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

@injectable
class CheckFirstTime {
  final CheckAppState appState;

  CheckFirstTime({@required this.appState});

  Future<bool> call() {
    return appState.checkFirstTimeLogin();
  }
}
