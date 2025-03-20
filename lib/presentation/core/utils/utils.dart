import 'package:todo_app/data/data.dart';
import 'package:todo_app/presentation/presentation.dart';

export 'context_utility.dart';
export 'extensions.dart';
export 'responsive.dart';
export 'size_config.dart';

extension TranslateError on AppLocalizations {
  String error(Error error) {
    return error.when(
      networkError: (_) =>
          'Estamos presentando problemas de comunicación con el servidor', //networkError,
      serverError: () => serverError,
      accessTokenError: () => accessTokenError,
      unauthorizedError: () => unauthorizedError,
      notFoundError: () => notFoundError,
      resourceForbidden: () => resourceForbidden,
      unsplashError: () => 'Unsplash error',
      storeClosed: () => 'Tienda cerrada',
      loginTimeOut: () => 'Expiró la sesión',
      apiError: processMessage,
    );
  }

  String processMessage(String? message) {
    if (message == null || message.isEmpty) return 'Error desconocido';
    if (message.toLowerCase().contains('current profiles exceeds')) {
      return 'La cantidad actual de perfiles excede el máximo número de perfiles permitidos en esta licencia. Usted deberá adquirir otra licencia';
    }
    if (message.toLowerCase().contains('user not already exists')) {
      return 'No existe ningún usuario con ese correo asociado';
    }

    return message;
  }
}
