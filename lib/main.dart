import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:app/ui/widgets/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(I18n(
    initialLocale: await I18n.loadLocale(),
    autoSaveLocale: true,
    supportedLocales: const [
      Locale('en', 'US'),
      Locale('pt', 'BR'),
      Locale('es', 'ES'),
      Locale('fr', 'FR'),
      Locale('ko', 'KR'),
    ],
    localizationsDelegates: const [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: I18n.locale,
      localizationsDelegates: I18n.localizationsDelegates,
      supportedLocales: I18n.supportedLocales,
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
