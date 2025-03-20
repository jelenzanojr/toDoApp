import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/gen/assets.gen.dart';
import 'package:todo_app/presentation/presentation.dart';

class DrawerAccountWidget extends StatelessWidget {
  const DrawerAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 158,
      child: _AccountDoneWidget(),
    );
  }
}

class _AccountDoneWidget extends StatelessWidget {
  const _AccountDoneWidget();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ZoomIn(
              child: Assets.images.logo.image(
                height: 70,
              ),
            ),
          ],
        ),
        const SizedBox(height: 2),
        LayoutBuilder(
          builder: (context, constraints) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: constraints.maxWidth - 4,
                  child: Text(
                    l10n.appName,
                    overflow: TextOverflow.clip,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'LibreBaskerville',
                      fontStyle: FontStyle.normal,
                      fontSize: 19,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
