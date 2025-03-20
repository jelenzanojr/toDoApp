// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i12;
import 'package:todo_app/core/core.dart' as _i8;
import 'package:todo_app/core/dependencies/dependencies.dart' as _i16;
import 'package:todo_app/core/environments/app_environment.dart' as _i4;
import 'package:todo_app/core/environments/app_environment_dev.dart' as _i5;
import 'package:todo_app/core/environments/app_environment_prod.dart' as _i6;
import 'package:todo_app/core/platform/http_client/http_client.dart' as _i7;
import 'package:todo_app/data/data.dart' as _i10;
import 'package:todo_app/data/datasources/database_datasource.dart' as _i3;
import 'package:todo_app/data/datasources/product_datasource.dart' as _i9;
import 'package:todo_app/data/repositories/product_repository.dart' as _i11;
import 'package:todo_app/presentation/core/bloc/theme/theme_bloc.dart' as _i13;
import 'package:todo_app/presentation/home/bloc/home_bloc.dart' as _i14;
import 'package:todo_app/presentation/products/bloc/product_bloc.dart' as _i15;

const String _dev = 'dev';
const String _test = 'test';
const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.AppDb>(() => _i3.AppDb());
    gh.factory<_i4.AppEnvironment>(
      () => _i5.AppEnvironmentDev(),
      registerFor: {
        _dev,
        _test,
      },
    );
    gh.factory<_i4.AppEnvironment>(
      () => _i6.AppEnvironmentProd(),
      registerFor: {_prod},
    );
    gh.singleton<_i7.HttpClient>(
        () => _i7.HttpClient(gh<_i8.AppEnvironment>()));
    gh.factory<_i9.ProductDatasource>(() => _i9.ProductDatasource(
          gh<_i8.HttpClient>(),
          gh<_i10.AppDb>(),
        ));
    gh.factory<_i11.ProductRepository>(() => _i11.ProductRepository(
          gh<_i10.ProductDatasource>(),
          gh<_i10.AppDb>(),
        ));
    await gh.factoryAsync<_i12.SharedPreferences>(
      () => registerModule.prefs,
      registerFor: {
        _prod,
        _dev,
      },
      preResolve: true,
    );
    gh.factory<_i13.ThemeBloc>(
        () => _i13.ThemeBloc(gh<_i12.SharedPreferences>()));
    gh.factory<_i14.HomeBloc>(
        () => _i14.HomeBloc(gh<_i10.ProductRepository>()));
    gh.factory<_i15.ProductBloc>(
        () => _i15.ProductBloc(gh<_i10.ProductRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i16.RegisterModule {}
