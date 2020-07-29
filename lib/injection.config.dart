// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:async';

import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/get_it_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/network/network_info.dart';
import 'core/utils/check_app_state.dart';
import 'core/utils/injection_module.dart';
import 'features/data/datasource/chat_api_service.dart';
import 'features/data/datasource/chat_local_data.dart';
import 'features/data/datasource/chat_remote_data.dart';
import 'features/data/repository/chat_repository_impl.dart';
import 'features/domain/repository/chat_repository.dart';
import 'features/domain/usecase/change_user_password.dart';
import 'features/domain/usecase/check_first_time.dart';
import 'features/domain/usecase/check_login.dart';
import 'features/domain/usecase/get_user_profile.dart';
import 'features/domain/usecase/login_user.dart';
import 'features/domain/usecase/recover_user_password.dart';
import 'features/domain/usecase/register_user.dart';
import 'features/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'features/presentation/bloc/change_password_bloc/change_password_bloc.dart';
import 'features/presentation/bloc/login_bloc/login_bloc.dart';
import 'features/presentation/bloc/recover_password_bloc/recover_password_bloc.dart';
import 'features/presentation/bloc/register_bloc/register_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final gh = GetItHelper(g, environment);
  final injectionModule = _$InjectionModule();
  gh.lazySingleton<ChatApiService>(() => ChatApiService.create());
  gh.lazySingleton<ChatRemoteData>(
      () => ChatRemoteDataImpl(service: g<ChatApiService>()));
  gh.lazySingleton<DataConnectionChecker>(
      () => injectionModule.dataConnectionChecker);
  gh.lazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(g<DataConnectionChecker>()));
  final sharedPreferences = await injectionModule.prefs;
  gh.factory<SharedPreferences>(() => sharedPreferences);
  gh.lazySingleton<ChatLocalData>(
      () => ChatLocalDataImpl(sharedPreferences: g<SharedPreferences>()));
  gh.lazySingleton<ChatRepository>(() => ChatRepositoryImpl(
        remoteData: g<ChatRemoteData>(),
        localData: g<ChatLocalData>(),
        networkInfo: g<NetworkInfo>(),
      ));
  gh.lazySingleton<CheckAppState>(
      () => CheckAppState(sharedPreferences: g<SharedPreferences>()));
  gh.factory<CheckFirstTime>(
      () => CheckFirstTime(appState: g<CheckAppState>()));
  gh.factory<CheckLogin>(() => CheckLogin(appState: g<CheckAppState>()));
  gh.factory<GetUserProfile>(
      () => GetUserProfile(repository: g<ChatRepository>()));
  gh.factory<LoginUser>(() => LoginUser(repository: g<ChatRepository>()));
  gh.factory<RecoverPasswordBloc>(
      () => RecoverPasswordBloc(repository: g<ChatRepository>()));
  gh.factory<RecoverUserPassword>(
      () => RecoverUserPassword(repository: g<ChatRepository>()));
  gh.factory<RegisterUser>(() => RegisterUser(repository: g<ChatRepository>()));
  gh.factory<AuthBloc>(() => AuthBloc(
      checkFirstTime: g<CheckFirstTime>(), checkLogin: g<CheckLogin>()));
  gh.factory<ChangeUserPassword>(
      () => ChangeUserPassword(repository: g<ChatRepository>()));
  gh.factory<LoginBloc>(() => LoginBloc(user: g<LoginUser>()));
  gh.factory<RegisterBloc>(() => RegisterBloc(user: g<RegisterUser>()));
  gh.factory<ChangePasswordBloc>(
      () => ChangePasswordBloc(userPassword: g<ChangeUserPassword>()));
}

class _$InjectionModule extends InjectionModule {}
