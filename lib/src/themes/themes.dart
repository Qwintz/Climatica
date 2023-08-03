import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

export 'climatica_icons.dart';

part 'theme_colors.dart';

abstract class Themes {
  static const colors = ThemeColors(
    primary: Color(0xFF338051),
    black: Color(0xFF121212),
    darkGrey: Color(0xFF212121),
    grey: Color(0xFF797979),
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
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 56.0,
            fontWeight: FontWeight.w700,
            color: darkMode ? colors.white : colors.black,
          ),
          displaySmall: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            color: darkMode ? colors.white : colors.black,
          ),
          titleLarge: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: darkMode ? colors.white : colors.black,
          ),
        ),
      );
}
