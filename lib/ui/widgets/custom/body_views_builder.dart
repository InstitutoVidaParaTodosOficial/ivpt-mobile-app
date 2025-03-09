import 'package:flutter/material.dart';
import 'package:app/ui/widgets/home/home_body.dart';
import 'package:app/ui/widgets/hymnal/hymnal_body.dart';
import 'package:app/ui/widgets/ivpt/ivpt_body.dart';
import 'package:app/ui/widgets/offers/offers_body.dart';

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
        HomeBody(),
        HymnalBody(),
        IvptBody(),
        OffersBody(),
      ],
    );
  }
}
