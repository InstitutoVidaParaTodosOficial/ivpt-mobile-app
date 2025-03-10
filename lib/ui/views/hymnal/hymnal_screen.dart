import 'package:app/ui/views/hymnal/hymnal_categories.dart';
import 'package:app/ui/views/hymnal/hymnal_keypad.dart';
import 'package:flutter/material.dart';

class HymnalScreen extends StatelessWidget {
  final gapWidget = const SizedBox(height: 15);

  const HymnalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const HymnalKeypad(),
            gapWidget,
            const HymnalCategories(),
          ],
        ),
      ),
    );
  }
}
