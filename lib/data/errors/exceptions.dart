class NetworkException implements Exception {
  NetworkException(this.message);

  final String? message;
}

class ServerException implements Exception {}

class AccessTokenException implements Exception {}

class NotFoundException implements Exception {}

class UnauthorizedException implements Exception {}

class ResourceForbidden implements Exception {}

class StoreClosedException implements Exception {}

class LoginTimeOutException implements Exception {}

class ApiException implements Exception {
  ApiException(this.message);

  final String message;
}
