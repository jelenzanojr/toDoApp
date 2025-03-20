import 'package:todo_app/core/dependencies/dependencies.dart';
import 'package:todo_app/presentation/presentation.dart';

final blocProviders = <BlocProvider>[
  BlocProvider<ThemeBloc>(
    create: (_) => getIt(),
  ),
  BlocProvider<HomeBloc>(
    create: (_) => getIt(),
  ),
  BlocProvider<ProductBloc>(
    create: (_) => getIt(),
  ),
];
