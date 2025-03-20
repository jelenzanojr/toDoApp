import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:todo_app/core/dependencies/dependencies.dart';
import 'package:todo_app/presentation/presentation.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(
  FutureOr<Widget> Function() builder, {
  required String environment,
}) async {
  Beamer.setPathUrlStrategy();

  HttpOverrides.global = MyHttpOverrides();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await BlocOverrides.runZoned(
    () async => await runZonedGuarded(
      () async {
        final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
        FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

        await SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
        ]);

        await setupDependencies(environment);

        runApp(await builder());
      },
      (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
    ),
    blocObserver: AppBlocObserver(),
  );
  FlutterNativeSplash.remove();
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (x509Certificate, string, sint) => true;
  }
}
