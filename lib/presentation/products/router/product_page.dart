import 'package:flutter/cupertino.dart';
import 'package:todo_app/presentation/presentation.dart';

class ProductPage extends BeamPage {
  ProductPage()
      : super(
          key: ValueKey(route()),
          name: route(),
          title: 'Products',
          child: const ProductView(),
          type: BeamPageType.noTransition,
        );

  static String get pathBlueprint => '/products';
  static String route() => '/products';
  static void open(BuildContext context) => context.beamToNamed(route());

  static bool checkBeamState(BeamState state) =>
      state.pathPatternSegments.contains('products');
}
