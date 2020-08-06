import 'package:flutterchatapp/core/utils/check_app_state.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

@injectable
class CheckToken {
  final CheckAppState appState;

  CheckToken({@required this.appState});

  Future<bool> call() {
    return appState.userLoggedIn();
  }
}