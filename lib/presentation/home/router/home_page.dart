import 'package:todo_app/presentation/presentation.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends BeamPage {
  HomePage()
      : super(
          key: ValueKey(route()),
          name: route(),
          title: 'Home',
          child: Builder(
            builder: (context) {
              context.read<HomeBloc>().add(
                    const HomeEvent.loadData(''),
                  );
              return const HomeView();
            },
          ),
          type: BeamPageType.noTransition,
        );

  static String get pathBlueprint => '/';
  static String route() => '/';
  static void open(BuildContext context) => context.beamToNamed(route());
  static void openAndReplace(BuildContext context) =>
      context.beamToReplacementNamed(
        route(),
      );
}
