import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';

import 'router/router.dart';
import 'themes/themes.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeMode.light,
      localizationsDelegates: Translations.localizationsDelegates,
      supportedLocales: Translations.supportedLocales,
      debugShowCheckedModeBanner: false,
    );
  }
}
