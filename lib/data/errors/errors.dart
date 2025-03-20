import 'package:freezed_annotation/freezed_annotation.dart';

export 'exceptions.dart';
export 'handlers.dart';

part 'errors.freezed.dart';
part 'errors.g.dart';

@freezed
class Error with _$Error {
  factory Error.networkError({@Default('') String? message}) = NetworkError;

  factory Error.serverError() = _ServerError;

  factory Error.accessTokenError() = _AccessTokenError;

  factory Error.unauthorizedError() = _UnauthorizedError;

  factory Error.notFoundError() = _NotFoundError;

  factory Error.resourceForbidden() = _ResourceForbidden;

  factory Error.unsplashError() = _UnsplashError;

  factory Error.storeClosed() = _StoreClosed;

  factory Error.loginTimeOut() = _LoginTimeOut;

  factory Error.apiError({@Default('') String? message}) = _ApiError;

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);
}

@freezed
class Result<T> with _$Result<T> {
  factory Result.success(T data) = _ResultSuccess;
  factory Result.error(Error error) = _ResultError;
}
