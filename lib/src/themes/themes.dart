import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

export 'climatica_icons.dart';

part 'theme_colors.dart';

abstract class Themes {
  static const colors = ThemeColors(
    primary: Color(0xFF338051),
    black: Color(0xFF121212),
    darkGrey: Color(0xFF212121),
    grey: Color(0xFF696969),
    lightGrey: Color(0xFFD9D9D9),
    white: Color(0xFFF5F5F5),
    red: Color(0xFFEF476F),
    orange: Color(0xFFF78C6B),
    yellow: Color(0xFFFFD166),
    green: Color(0xFF06D6A0),
    blue: Color(0xFF118AB2),
    purple: Color(0xFF751571),
    sunny: Color(0xFFFAEDCB),
    cloudy: Color(0xFFE7E7E7),
    rain: Color(0xFFDAEAED),
    fog: Color(0xFFE2E2DF),
    snow: Color(0xFFEAE4E9),
    glaze: Color(0xFFDAEAED),
    hail: Color(0xFFE2E2DF),
    thunder: Color(0xFFEAE4E9),
  );

  static ThemeData get light => _buildThemeData(false);

  static ThemeData get dark => _buildThemeData(true);

  static ThemeData _buildThemeData(bool darkMode) => ThemeData(
        useMaterial3: true,
        extensions: const <ThemeExtension>[
          colors,
        ],
        brightness: darkMode ? Brightness.dark : Brightness.light,
        scaffoldBackgroundColor: darkMode ? colors.black : colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          foregroundColor: darkMode ? colors.white : colors.black,
          iconTheme: IconThemeData(
            color: darkMode ? colors.white : colors.black,
            size: 24.0,
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness:
                darkMode ? Brightness.light : Brightness.dark,
            systemNavigationBarColor: darkMode ? colors.black : colors.white,
            systemNavigationBarIconBrightness:
                darkMode ? Brightness.light : Brightness.dark,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color?>(colors.primary),
            foregroundColor: MaterialStatePropertyAll<Color?>(colors.white),
            fixedSize: const MaterialStatePropertyAll<Size?>(
                Size(double.infinity, 48.0)),
            shape: MaterialStatePropertyAll<OutlinedBorder?>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color?>(
                darkMode ? colors.darkGrey : colors.lightGrey),
            foregroundColor: MaterialStatePropertyAll<Color?>(colors.grey),
            fixedSize: const MaterialStatePropertyAll<Size?>(
                Size(double.infinity, 32.0)),
            shape: MaterialStatePropertyAll<OutlinedBorder?>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            visualDensity: VisualDensity.compact,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(16.0),
          prefixIconColor: colors.grey,
          hintStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            color: colors.grey,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: darkMode ? colors.darkGrey : colors.lightGrey,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: colors.primary,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: colors.primary,
          selectionColor: colors.primary,
          selectionHandleColor: colors.primary,
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: darkMode ? colors.white : colors.black,
        ),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 56.0,
            fontWeight: FontWeight.w700,
            color: darkMode ? colors.white : colors.black,
          ),
          displayMedium: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 36.0,
            fontWeight: FontWeight.w700,
            color: darkMode ? colors.white : colors.black,
          ),
          displaySmall: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
            color: darkMode ? colors.white : colors.black,
          ),
          titleLarge: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            color: darkMode ? colors.white : colors.black,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            color: colors.grey,
          ),
          labelLarge: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: colors.white,
          ),
          labelMedium: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
            color: colors.grey,
          ),
        ),
      );
}
