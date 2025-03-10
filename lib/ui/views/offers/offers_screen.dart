import 'package:flutter/material.dart';
import 'package:app/ui/views/offers/section_about.dart';
import 'package:app/ui/views/offers/section_cards.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({
    super.key,
  });

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  final gapWidget = const SizedBox(height: 20);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Column(
          children: [
            const SectionAbout(),
            gapWidget,
            const SectionCards(),
            gapWidget,
          ],
        ),
      ),
    );
  }
}
