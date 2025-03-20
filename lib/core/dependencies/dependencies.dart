// ignore_for_file: always_use_package_imports

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dependencies.config.dart';

final getIt = GetIt.instance;

@module
abstract class RegisterModule {
  @prod
  @dev
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

@InjectableInit()
Future<GetIt> setupDependencies(String env) => getIt.init(
      environment: env,
    );
