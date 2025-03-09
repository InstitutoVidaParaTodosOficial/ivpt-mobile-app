import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:app/utils/translations/translations_app.dart';

class CustomBottomNavBar extends StatelessWidget {
  final PageController pageController;

  const CustomBottomNavBar({
    super.key,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      style: TabStyle.react,
      initialActiveIndex: 0,
      backgroundColor: const Color(0xFF06345A),
      items: [
        TabItem(icon: Icons.home_outlined, title: 'Home'.i18app),
        TabItem(icon: Icons.menu_book_outlined, title: 'Hymnal'.i18app),
        const TabItem(
          icon: ImageIcon(
            AssetImage("assets/icons/icon-ivpt-bar.png"),
            color: Colors.white,
          ),
          title: 'Ivpt',
          isIconBlend: true,
        ),
        TabItem(icon: Icons.favorite, title: 'Offers'.i18app),
      ],
      onTap: (index) {
        pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 100),
          curve: Curves.linear,
        );
      },
    );
  }
}
