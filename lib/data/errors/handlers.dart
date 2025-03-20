import 'package:dio/dio.dart';
import 'package:todo_app/data/data.dart';

Exception handleDioException(DioException error) {
  if (error.response?.statusCode == 401) {
    return UnauthorizedException();
  }

  if (error.response?.statusCode == 404) {
    return NotFoundException();
  }

  if (error.response?.statusCode == 403) {
    return ResourceForbidden();
  }

  if (error.response?.statusCode == 503) {
    return StoreClosedException();
  }

  if (error.response == null || error.response?.data == null) {
    return NetworkException(error.message);
  }

  try {
    return ApiException(
      convertException(error.response?.data as Map<String, dynamic>),
    );
  } catch (e) {
    return NetworkException(error.message);
  }
}

String convertException(Map<String, dynamic> data) {
  try {
    final messageData = data['error'] as Map<String, dynamic>;

    final message = messageData['message'] as String;

    return message; // return data['error'] as String;
  }
  // ignore: empty_catches
  catch (e) {
    print(e);
  }
  return '';
}

Error handleException(Exception e) {
  switch (e.runtimeType) {
    case ServerException:
      return Error.serverError();
    case AccessTokenException:
      return Error.accessTokenError();
    case UnauthorizedException:
      return Error.unauthorizedError();
    case NotFoundException:
      return Error.notFoundError();
    case ResourceForbidden:
      return Error.resourceForbidden();
    case LoginTimeOutException:
      return Error.loginTimeOut();
    case NetworkException:
      final s = e as NetworkException;
      return Error.networkError(message: s.message);
    case ApiException:
      final s = e as ApiException;
      return Error.apiError(message: s.message);
  }

  return Error.networkError();
}
