import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app/presentation/presentation.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Drawer(
      backgroundColor: const Color(0xff000066),
      child: Stack(
        children: [
          ListView(
            children: [
              const DrawerHeader(
                child: DrawerAccountWidget(),
              ),
              DrawerListTile(
                title: l10n.productReview,
                svgSrc: 'assets/icons/menu_home.svg',
                press: () {
                  Scaffold.of(context).openEndDrawer();
                  HomePage.open(context);
                },
              ),
              DrawerListTile(
                title: l10n.productNotReview,
                svgSrc: 'assets/icons/menu_company.svg',
                press: () {
                  Scaffold.of(context).openEndDrawer();
                  ProductPage.open(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
    super.key,
  });

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white,
        // colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn),
        height: 48,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
