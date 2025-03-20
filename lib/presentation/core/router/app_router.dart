import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:todo_app/presentation/presentation.dart';

class AppRouter extends StatelessWidget {
  const AppRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return BeamerProvider(
      key: ContextUtility.navigatorKey,
      routerDelegate: routerDelegate,
      child: MultiBlocProvider(
        providers: blocProviders,
        child: MaterialApp.router(
          title: 'ToDoApp',
          theme: defaultTheme,
          themeMode: ThemeMode.light,
          routeInformationParser: BeamerParser(),
          routerDelegate: routerDelegate,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            ...GlobalMaterialLocalizations.delegates,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          debugShowCheckedModeBanner: false,
          backButtonDispatcher: BeamerBackButtonDispatcher(
            delegate: routerDelegate,
            // alwaysBeamBack: true,
          ),
        ),
      ),
    );
  }
}
