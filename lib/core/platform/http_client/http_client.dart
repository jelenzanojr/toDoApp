import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/core/core.dart';

import 'package:todo_app/core/platform/http_client/adapters/http_stub_adapter.dart'
    if (dart.library.html) 'adapters/http_browser_adapter.dart'
    if (dart.library.io) 'adapters/http_native_adapter.dart';
import 'package:todo_app/core/platform/http_client/http_logger.dart';

@singleton
class HttpClient with DioMixin implements Dio {
  HttpClient(
    this._env,
  ) {
    options = BaseOptions(
      baseUrl: _env.apiUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      headers: <String, dynamic>{
        'accept': '*/*',
        'accept-encoding': 'gzip, deflate', //br
        'Content-Type': 'application/json',
      },
    );

    httpClientAdapter = httpAdapter();

    interceptors.add(HttpLogger());
    // ..add(HttpAuthorization(this, _storage));
  }

  final AppEnvironment _env;
}
