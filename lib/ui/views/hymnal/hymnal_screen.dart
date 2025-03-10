import 'package:app/ui/views/hymnal/hymnal_categories.dart';
import 'package:app/ui/views/hymnal/hymnal_keypad.dart';
import 'package:flutter/material.dart';

class HymnalScreen extends StatefulWidget {
  const HymnalScreen({super.key});

  @override
  State<HymnalScreen> createState() => _HymnalScreenState();
}

class _HymnalScreenState extends State<HymnalScreen> {
  final gapWidget = const SizedBox(height: 15);
  final _expandedWidget = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          children: [
            HymnalKeypad(expandedWidget: _expandedWidget),
            gapWidget,
            HymnalCategories(expandedWidget: _expandedWidget),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _expandedWidget.dispose();
    super.dispose();
  }
}
