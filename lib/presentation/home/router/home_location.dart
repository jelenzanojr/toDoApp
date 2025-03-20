import 'package:flutter/widgets.dart';
import 'package:todo_app/presentation/presentation.dart';

class HomeLocation extends BeamLocation<BeamState> {
  @override
  List<Pattern> get pathPatterns => <String>[
        HomePage.pathBlueprint,
        ProductPage.pathBlueprint,
      ];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        HomePage(),
        if (ProductPage.checkBeamState(state)) ProductPage(),
      ];
}
