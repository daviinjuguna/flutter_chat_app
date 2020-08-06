import 'package:flutterchatapp/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
 initializerName: r'$initGetIt', // default
 preferRelativeImports: true, // default
 asExtension: false,
)
Future<void> configureInjection(String env) async {
 await $initGetIt(getIt, environment: env);
}