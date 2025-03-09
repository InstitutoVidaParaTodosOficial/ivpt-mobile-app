import 'package:app/ui/widgets/custom/custom_title.dart';
import 'package:app/ui/widgets/hymnal/hymnal_buttons.dart';
import 'package:app/utils/translations/translations_app.dart';
import 'package:flutter/material.dart';

class HymnalBody extends StatelessWidget {

  final gapWidget = const SizedBox(height: 15);

  const HymnalBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HymnalButtons(
              text: "Keyboard".i18app,
              iconData: Icons.keyboard_alt_outlined,
            ),
            gapWidget,
            CustomTitle(text: "Categories".i18app),
            gapWidget,
            HymnalButtons(
              text: "Hymns".i18app,
              iconData: Icons.circle,
              sizeIcon: 10,
            ),
            gapWidget,
            HymnalButtons(
              text: "Supplements".i18app,
              iconData: Icons.circle,
              sizeIcon: 10,
            ),
            gapWidget,
            HymnalButtons(
              text: "Songs".i18app,
              iconData: Icons.circle,
              sizeIcon: 10,
            ),
            gapWidget,
            HymnalButtons(
              text: "New Hymns".i18app,
              iconData: Icons.circle,
              sizeIcon: 10,
            ),
            gapWidget,
          ],
        ),
      ),
    );
  }
}
