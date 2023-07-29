import 'package:flutter/material.dart';

import '../extensions/extensions.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          context.translations.temperature,
          style: context.theme.textTheme.titleLarge,
        ),
      ),
      body: Center(
        child: Text(
          context.translations.celsius(28),
          style: context.theme.textTheme.displayLarge?.copyWith(
            color: context.theme.extraColors?.brandColor,
          ),
        ),
      ),
    );
  }
}
