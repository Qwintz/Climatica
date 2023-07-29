import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'extra_colors.dart';

abstract class Themes {
  static ThemeData get light => _getThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          seedColor: Colors.red,
        ),
        extensions: <ThemeExtension<dynamic>>[
          const ExtraColors(
            brandColor: Colors.red,
          ),
        ],
      );

  static ThemeData get dark => _getThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Colors.blue,
        ),
        extensions: <ThemeExtension<dynamic>>[
          const ExtraColors(
            brandColor: Colors.blue,
          ),
        ],
      );

  static ThemeData _getThemeData({
    required ColorScheme colorScheme,
    Iterable<ThemeExtension<dynamic>>? extensions,
  }) =>
      ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme,
        extensions: extensions,
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: colorScheme.brightness == Brightness.dark
                ? Brightness.light
                : Brightness.dark,
            systemNavigationBarColor: colorScheme.background,
            systemNavigationBarIconBrightness:
                colorScheme.brightness == Brightness.dark
                    ? Brightness.light
                    : Brightness.dark,
          ),
        ),
        textTheme: TextTheme(
          displayLarge: TextStyle(
              fontSize: 72.0,
              fontWeight: FontWeight.bold,
              color: colorScheme.primary),
          titleLarge: const TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}
