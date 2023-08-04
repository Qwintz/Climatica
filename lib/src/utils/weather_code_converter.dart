import 'package:flutter/material.dart';

import '../../src/extensions/extensions.dart';

String weatherCodeToString(BuildContext context, int code) {
  switch (code) {
    case 1000:
      return context.translations.sunny;
    case 1100:
      return context.translations.sunny;
    case 1101:
      return context.translations.partlyCloudy;
    case 1102:
      return context.translations.cloudy;
    case 1001:
      return context.translations.cloudy;
    case 2000:
      return context.translations.fog;
    case 2100:
      return context.translations.lightFog;
    case 4000:
      return context.translations.lightRain;
    case 4001:
      return context.translations.rain;
    case 4200:
      return context.translations.lightRain;
    case 4201:
      return context.translations.heavyRain;
    case 5000:
      return context.translations.snow;
    case 5001:
      return context.translations.lightSnow;
    case 5100:
      return context.translations.lightSnow;
    case 5101:
      return context.translations.heavySnow;
    case 6000:
      return context.translations.lightGlaze;
    case 6001:
      return context.translations.glaze;
    case 6200:
      return context.translations.lightGlaze;
    case 6201:
      return context.translations.heavyGlaze;
    case 7000:
      return context.translations.hail;
    case 7101:
      return context.translations.heavyHail;
    case 7102:
      return context.translations.lightHail;
    case 8000:
      return context.translations.thunder;
    default:
      return context.translations.unknown;
  }
}

Color weatherCodeToColor(BuildContext context, int code) {
  switch (code) {
    case 1000:
      return context.theme.colors.sunny;
    case 1100:
      return context.theme.colors.sunny;
    case 1101:
      return context.theme.colors.cloudy;
    case 1102:
      return context.theme.colors.cloudy;
    case 1001:
      return context.theme.colors.cloudy;
    case 2000:
      return context.theme.colors.fog;
    case 2100:
      return context.theme.colors.fog;
    case 4000:
      return context.theme.colors.rain;
    case 4001:
      return context.theme.colors.rain;
    case 4200:
      return context.theme.colors.rain;
    case 4201:
      return context.theme.colors.rain;
    case 5000:
      return context.theme.colors.snow;
    case 5001:
      return context.theme.colors.snow;
    case 5100:
      return context.theme.colors.snow;
    case 5101:
      return context.theme.colors.snow;
    case 6000:
      return context.theme.colors.glaze;
    case 6001:
      return context.theme.colors.glaze;
    case 6200:
      return context.theme.colors.glaze;
    case 6201:
      return context.theme.colors.glaze;
    case 7000:
      return context.theme.colors.hail;
    case 7101:
      return context.theme.colors.hail;
    case 7102:
      return context.theme.colors.hail;
    case 8000:
      return context.theme.colors.thunder;
    default:
      return context.theme.colors.cloudy;
  }
}
