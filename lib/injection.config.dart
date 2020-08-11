// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'features/data/datasource/auth_local_data.dart';
import 'features/data/datasource/auth_remote_data.dart';
import 'features/domain/repository/auth_repository.dart';
import 'features/data/repository/AuthRepositoryImpl.dart';
import 'core/utils/check_app_state.dart';
import 'features/domain/usecase/check_login.dart';
import 'core/utils/injection_module.dart';
import 'features/presentation/bloc/login_bloc/login_bloc.dart';
import 'core/network/network_info.dart';
import 'features/presentation/bloc/register_bloc/register_bloc.dart';
import 'features/data/datasource/rest_client.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final injectionModule = _$InjectionModule();
  gh.lazySingleton<AuthRemoteDataSource>(() => AuthRemoteDataSourceImpl());
  gh.lazySingleton<DataConnectionChecker>(
      () => injectionModule.dataConnectionChecker);
  gh.lazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(get<DataConnectionChecker>()));
  gh.factory<RegisterBloc>(() => RegisterBloc());
  final sharedPreferences = await injectionModule.prefs;
  gh.factory<SharedPreferences>(() => sharedPreferences);
  gh.factory<String>(() => injectionModule.baseUrl, instanceName: 'BaseUrl');
  gh.lazySingleton<AuthLocalDataSource>(() =>
      AuthLocalDataSourceImpl(sharedPreferences: get<SharedPreferences>()));
  gh.lazySingleton<AuthRepository>(() => AuthRepositoryImpl(
        localDataSource: get<AuthLocalDataSource>(),
        remoteDataSource: get<AuthRemoteDataSource>(),
        networkInfo: get<NetworkInfo>(),
      ));
  gh.lazySingleton<CheckAppState>(
      () => CheckAppState(sharedPreferences: get<SharedPreferences>()));
  gh.factory<CheckLogin>(() => CheckLogin(appState: get<CheckAppState>()));
  gh.lazySingleton<Dio>(
      () => injectionModule.dio(get<String>(instanceName: 'BaseUrl')));
  gh.factory<LoginBloc>(() => LoginBloc(repository: get<AuthRepository>()));
  gh.lazySingleton<RestClient>(() => RestClient(get<Dio>()));
  gh.factory<AuthBloc>(() => AuthBloc(isLoggedIn: get<CheckLogin>()));
  return get;
}

class _$InjectionModule extends InjectionModule {}
