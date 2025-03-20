export 'app_environment_dev.dart';
export 'app_environment_prod.dart';

abstract class AppEnvironment {
  const AppEnvironment({
    required this.apiUrl,
  });

  final String apiUrl;
}
