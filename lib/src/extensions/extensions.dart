import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';

import '../themes/themes.dart';

extension BuildContextExtension on BuildContext {
  Translations get translations => Translations.of(this);
  ThemeData get theme => Theme.of(this);
}

extension ThemeDataExtension on ThemeData {
  ThemeColors get colors => extension<ThemeColors>()!;
}
