import 'package:injectable/injectable.dart';
import 'package:todo_app/core/environments/app_environment.dart';

@prod
@Injectable(as: AppEnvironment)
class AppEnvironmentProd extends AppEnvironment {
  AppEnvironmentProd()
      : super(
          apiUrl: 'https://67d9bfab35c87309f52a05b8.mockapi.io',
        );
}
