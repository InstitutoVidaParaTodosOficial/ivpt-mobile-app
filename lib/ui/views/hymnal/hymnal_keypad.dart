import 'package:app/ui/views/hymnal/hymnal_buttons.dart';
import 'package:app/utils/translations/translations_app.dart';
import 'package:flutter/material.dart';

class HymnalKeypad extends StatelessWidget {
  final gapWidget = const SizedBox(height: 15);

  const HymnalKeypad({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HymnalButtons(
            text: "Keyboard".i18app,
            iconData: Icons.keyboard_alt_outlined,
          ),
        ],
      ),
    );
  }
}
