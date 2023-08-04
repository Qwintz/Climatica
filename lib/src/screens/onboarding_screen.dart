import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../extensions/extensions.dart';
import '../themes/themes.dart';

class OnbaordingScreen extends StatelessWidget {
  const OnbaordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(ClimaticaIcons.settings),
            onPressed: () => context.push<void>('/settings'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 32,
            ),
            Container(
              width: 250.0,
              height: 178.0,
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset(
                'assets/images/svg/onboarding.svg',
              ),
            ),
            const SizedBox(
              height: 72.0,
            ),
            Text(
              context.translations.title,
              style: context.theme.textTheme.displayMedium,
            ),
            const SizedBox(
              height: 32.0,
            ),
            Text(
              context.translations.onboardingText,
              style: context.theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.replace('/location'),
                child: Text(
                  context.translations.getStarted,
                  style: context.theme.textTheme.labelLarge,
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}
