// ignore_for_file: dead_code

import 'package:flutter/material.dart';

import '../extensions/extensions.dart';
import '../themes/themes.dart';
import '../utils/utils.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const temperature = 21.0;
    const isFahrenheit = false;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Владивосток',
          style: context.theme.textTheme.titleLarge,
        ),
        leading: IconButton(
          icon: const Icon(ClimaticaIcons.location),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(ClimaticaIcons.refresh),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(ClimaticaIcons.settings),
            onPressed: () {},
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              isFahrenheit
                  ? context.translations.fahrenheit(
                      TemperatureConverter.toFahrenheit(temperature))
                  : context.translations.celsius(temperature),
              style: context.theme.textTheme.displayLarge,
            ),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              "Солнечно",
              style: context.theme.textTheme.displaySmall,
            ),
          ],
        ),
      ),
    );
  }
}
