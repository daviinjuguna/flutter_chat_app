// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'features/presentation/bloc/change_password_bloc/change_password_bloc.dart';
import 'features/domain/usecase/change_user_password.dart';
import 'features/data/datasource/chat_api_service.dart';
import 'features/data/datasource/chat_local_data.dart';
import 'features/data/datasource/chat_remote_data.dart';
import 'features/domain/repository/chat_repository.dart';
import 'features/data/repository/chat_repository_impl.dart';
import 'core/utils/check_app_state.dart';
import 'features/domain/usecase/check_token.dart';
import 'core/utils/injection_module.dart';
import 'features/presentation/bloc/login_bloc/login_bloc.dart';
import 'features/domain/usecase/login_user.dart';
import 'features/data/datasource/message_api_service.dart';
import 'core/network/network_info.dart';
import 'features/presentation/bloc/recover_password_bloc/recover_password_bloc.dart';
import 'features/domain/usecase/recover_user_password.dart';
import 'features/domain/usecase/refresh_token.dart';
import 'features/presentation/bloc/register_bloc/register_bloc.dart';
import 'features/domain/usecase/register_user.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final injectionModule = _$InjectionModule();
  gh.lazySingleton<ChatApiService>(() => ChatApiService.create());
  gh.lazySingleton<ChatRemoteData>(
      () => ChatRemoteDataImpl(service: get<ChatApiService>()));
  gh.lazySingleton<DataConnectionChecker>(
      () => injectionModule.dataConnectionChecker);
  gh.lazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(get<DataConnectionChecker>()));
  final sharedPreferences = await injectionModule.prefs;
  gh.factory<SharedPreferences>(() => sharedPreferences);
  gh.factory<String>(() => injectionModule.accessToken,
      instanceName: 'accessToken');
  gh.lazySingleton<ChatLocalData>(
      () => ChatLocalDataImpl(sharedPreferences: get<SharedPreferences>()));
  gh.lazySingleton<ChatRepository>(() => ChatRepositoryImpl(
        remoteData: get<ChatRemoteData>(),
        localData: get<ChatLocalData>(),
        networkInfo: get<NetworkInfo>(),
      ));
  gh.lazySingleton<CheckAppState>(
      () => CheckAppState(sharedPreferences: get<SharedPreferences>()));
  gh.factory<CheckToken>(() => CheckToken(appState: get<CheckAppState>()));
  gh.factory<LoginUser>(() => LoginUser(repository: get<ChatRepository>()));
  gh.lazySingleton<MessageApiService>(
      () => MessageApiService.create(get<String>(instanceName: 'accessToken')));
  gh.factory<RecoverPasswordBloc>(
      () => RecoverPasswordBloc(repository: get<ChatRepository>()));
  gh.factory<RecoverUserPassword>(
      () => RecoverUserPassword(repository: get<ChatRepository>()));
  gh.factory<RefreshTokenUseCase>(
      () => RefreshTokenUseCase(repository: get<ChatRepository>()));
  gh.factory<RegisterUser>(
      () => RegisterUser(repository: get<ChatRepository>()));
  gh.factory<AuthBloc>(() => AuthBloc(
      checkToken: get<CheckToken>(), refreshToken: get<RefreshTokenUseCase>()));
  gh.factory<ChangeUserPassword>(
      () => ChangeUserPassword(repository: get<ChatRepository>()));
  gh.factory<LoginBloc>(() => LoginBloc(user: get<LoginUser>()));
  gh.factory<RegisterBloc>(() => RegisterBloc(user: get<RegisterUser>()));
  gh.factory<ChangePasswordBloc>(
      () => ChangePasswordBloc(userPassword: get<ChangeUserPassword>()));
  return get;
}

class _$InjectionModule extends InjectionModule {}
