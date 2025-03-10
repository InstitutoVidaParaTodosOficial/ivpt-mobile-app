import 'package:flutter/material.dart';
import 'package:app/utils/app_colors/app_colors.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:app/utils/translations/translations_app.dart';
import 'package:app/ui/views/main_view/main_scaffold_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      durationInSeconds: 1,
      logo: const Image(
        image: AssetImage(
          "assets/images/logos/logo-ivpt.png",
        ),
        color: Colors.white,
      ),
      showLoader: true,
      backgroundColor: AppColors.primary,
      loaderColor: Colors.white,
      loadingText: Text(
        "Loading...".i18app,
        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      navigator: const MainScaffoldView(),
    );
  }
}
