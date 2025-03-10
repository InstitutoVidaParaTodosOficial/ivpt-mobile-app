import 'package:flutter/material.dart';
import 'package:app/ui/views/home/home_screen.dart';
import 'package:app/ui/views/hymnal/hymnal_screen.dart';
import 'package:app/ui/views/ivpt/ivpt_screen.dart';
import 'package:app/ui/views/offers/offers_screen.dart';

class BodyViewsBuilder extends StatelessWidget {
  final ValueNotifier<int> indexNotifier;
  final PageController pageController;

  const BodyViewsBuilder({
    super.key,
    required this.indexNotifier,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: pageController,
      onPageChanged: (indexPage) {
        indexNotifier.value = indexPage;
      },
      children: const [
        HomeScreen(),
        HymnalScreen(),
        IvptScreen(),
        OffersScreen(),
      ],
    );
  }
}
