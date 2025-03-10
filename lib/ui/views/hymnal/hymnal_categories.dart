import 'package:app/ui/views/hymnal/hymnal_buttons.dart';
import 'package:app/ui/widgets/custom/custom_title.dart';
import 'package:app/utils/translations/translations_app.dart';
import 'package:flutter/material.dart';

class HymnalCategories extends StatelessWidget {
  final gapWidget = const SizedBox(height: 15);
  final ValueNotifier<bool> expandedWidget;

  const HymnalCategories({
    super.key,
    required this.expandedWidget,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: expandedWidget,
      builder: (context, value, _) => AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
