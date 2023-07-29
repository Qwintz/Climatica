// ignore_for_file: dead_code

import 'package:flutter/material.dart';

import '../extensions/extensions.dart';
import '../utils/utils.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const temperature = 25.0;
    const isFahrenheit = true;

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
          isFahrenheit
              ? context.translations
                  .fahrenheit(TemperatureConverter.toFahrenheit(temperature))
              : context.translations.celsius(temperature),
          style: context.theme.textTheme.displayLarge?.copyWith(
            color: context.theme.extraColors?.brandColor,
          ),
        ),
      ),
    );
  }
}
