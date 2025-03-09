import 'package:flutter/material.dart';
import 'package:app/ui/widgets/custom/app_bar.dart';
import 'package:app/ui/widgets/custom/bottom_nav_bar.dart';
import 'package:app/ui/widgets/custom/body_views_builder.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({
    super.key,
  });

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  final _pageController = PageController();
  final ValueNotifier<int> _indexNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: CustomAppBar(indexNotifier: _indexNotifier),
      body: BodyViewsBuilder(
        indexNotifier: _indexNotifier,
        pageController: _pageController,
      ),
      bottomNavigationBar: CustomBottomNavBar(
        pageController: _pageController,
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _indexNotifier.dispose();
    super.dispose();
  }
}
