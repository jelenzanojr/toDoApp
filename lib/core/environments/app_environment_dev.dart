import 'package:injectable/injectable.dart';
import 'package:todo_app/core/environments/app_environment.dart';

@dev
@test
@Injectable(as: AppEnvironment)
class AppEnvironmentDev extends AppEnvironment {
  AppEnvironmentDev()
      : super(
          apiUrl: 'https://67d9bfab35c87309f52a05b8.mockapi.io',
        );
}
