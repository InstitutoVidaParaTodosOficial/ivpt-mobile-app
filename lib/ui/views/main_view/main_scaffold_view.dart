import 'package:flutter/material.dart';
import 'package:app/ui/widgets/custom/app_bar.dart';
import 'package:app/ui/widgets/custom/bottom_nav_bar.dart';
import 'package:app/ui/views/main_view/body_views_builder.dart';

class MainScaffoldView extends StatefulWidget {
  const MainScaffoldView({
    super.key,
  });

  @override
  State<MainScaffoldView> createState() => _MainScaffoldViewState();
}

class _MainScaffoldViewState extends State<MainScaffoldView> {
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
