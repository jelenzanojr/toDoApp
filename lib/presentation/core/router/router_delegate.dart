import 'package:todo_app/presentation/presentation.dart';

final routerDelegate = BeamerDelegate(
  locationBuilder: BeamerLocationBuilder(
    beamLocations: [
      HomeLocation(),
    ],
  ).call,
  guards: [
    // BeamGuard(
    //   pathPatterns: [
    //     LoginPage.route(),
    //     ConfigurationPage.route(),
    //   ],
    //   guardNonMatching: true,
    //   check: (context, location) {
    //     final authRepository = getIt<AuthRepository>();

    //     return authRepository.getLocalToken() != null;
    //   },
    //   beamToNamed: (_, __) => LoginPage.route(),
    // ),
  ],
);
