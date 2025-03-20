import 'package:injectable/injectable.dart';
import 'package:todo_app/bootstrap.dart';
import 'package:todo_app/presentation/presentation.dart';

void main() {
  bootstrap(
    () => const AppRouter(),
    environment: Environment.dev,
  );
}
