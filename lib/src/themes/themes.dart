import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'extra_colors.dart';

abstract class Themes {
  static ThemeData get light => _getThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          seedColor: Colors.purple,
        ),
        extensions: <ThemeExtension<dynamic>>[
          const ExtraColors(
            brandColor: Colors.purple,
          ),
        ],
      );

  static ThemeData get dark => _getThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Colors.green,
        ),
        extensions: <ThemeExtension<dynamic>>[
          const ExtraColors(
            brandColor: Colors.green,
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
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 72.0,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}
