import 'package:flutter/material.dart';

class ContextUtility {
  static final GlobalKey _navigatorKey =
      GlobalKey(debugLabel: 'ContextUtilityNavigatorKey');
  static GlobalKey get navigatorKey => _navigatorKey;

  // static bool get hasNavigator => navigatorKey.currentState != null;
  // static NavigatorState? get navigator => navigatorKey.currentState;

  static bool get hasContext => navigatorKey.currentContext != null;
  static BuildContext? get context => navigatorKey.currentContext;
}
