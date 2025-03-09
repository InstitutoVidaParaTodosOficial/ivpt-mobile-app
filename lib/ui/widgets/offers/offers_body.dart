import 'package:flutter/material.dart';
import 'package:app/ui/widgets/offers/section_about.dart';
import 'package:app/ui/widgets/offers/section_cards.dart';

class OffersBody extends StatefulWidget {
  const OffersBody({
    super.key,
  });

  @override
  State<OffersBody> createState() => _OffersBodyState();
}

class _OffersBodyState extends State<OffersBody> {
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
