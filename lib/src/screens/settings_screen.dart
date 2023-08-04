import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../extensions/extensions.dart';
import '../failures/failures.dart';
import '../themes/themes.dart';
import '../widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(ClimaticaIcons.back),
          onPressed: () => context.pop<void>(),
        ),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 16.0,
          ),
          SettingTile(
            title: context.translations.units,
            subtitle: context.translations.celsius,
            color: context.theme.colors.red,
            icon: Icon(
              ClimaticaIcons.units,
              color: context.theme.colors.white,
            ),
            onPressed: () {},
          ),
          SettingTile(
            title: context.translations.theme,
            subtitle: context.translations.system,
            color: context.theme.colors.yellow,
            icon: Icon(
              ClimaticaIcons.theme,
              color: context.theme.colors.white,
            ),
            onPressed: () {},
          ),
          SettingTile(
            title: context.translations.language,
            subtitle: context.translations.russian,
            color: context.theme.colors.blue,
            icon: Icon(
              ClimaticaIcons.language,
              color: context.theme.colors.white,
            ),
            onPressed: () => context.go(
              '/failure',
              extra: const NetworkFailure(),
            ),
          ),
        ],
      ),
    );
  }
}
