// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../extensions/extensions.dart';
import '../themes/themes.dart';
import '../widgets/widgets.dart';
import '../utils/utils.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(ClimaticaIcons.location),
          onPressed: () {},
        ),
        title: Text(
          "Владивосток",
          style: context.theme.textTheme.titleLarge,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(ClimaticaIcons.refresh),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(ClimaticaIcons.settings),
            onPressed: () => context.push('/settings'),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2.0,
            color: false
                ? context.theme.colors.darkGrey
                : weatherCodeToColor(context, 1000),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(
                    height: 56.0,
                  ),
                  Text(
                    false
                        ? context.translations
                            .fahrenheitValue(celsiusToFahrenheit(21.0))
                        : context.translations.celsiusValue(21.0),
                    style: context.theme.textTheme.displayLarge,
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    weatherCodeToString(context, 1000),
                    style: context.theme.textTheme.titleLarge,
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Row(
            children: <Widget>[
              WeatherStat(
                title: false
                    ? context.translations
                        .fahrenheitValue(celsiusToFahrenheit(23.0))
                    : context.translations.celsiusValue(23.0),
                subtitle: context.translations.feelsLike,
                color: context.theme.colors.red,
                icon: Icon(
                  ClimaticaIcons.feelsLike,
                  color: context.theme.colors.white,
                ),
              ),
              WeatherStat(
                title: context.translations.metersPerSecondValue(3),
                subtitle: context.translations.wind,
                color: context.theme.colors.orange,
                icon: Icon(
                  ClimaticaIcons.wind,
                  color: context.theme.colors.white,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              WeatherStat(
                title: context.translations.percentValue(17),
                subtitle: context.translations.humidity,
                color: context.theme.colors.green,
                icon: Icon(
                  ClimaticaIcons.humidity,
                  color: context.theme.colors.white,
                ),
              ),
              WeatherStat(
                title: context.translations.percentValue(0),
                subtitle: context.translations.precip,
                color: context.theme.colors.blue,
                icon: Icon(
                  ClimaticaIcons.precip,
                  color: context.theme.colors.white,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              WeatherStat(
                title: context.translations.kilometersValue(25.0),
                subtitle: context.translations.visibility,
                color: context.theme.colors.yellow,
                icon: Icon(
                  ClimaticaIcons.visibility,
                  color: context.theme.colors.white,
                ),
              ),
              WeatherStat(
                title: '${0}',
                subtitle: context.translations.uvIndex,
                color: context.theme.colors.purple,
                icon: Icon(
                  ClimaticaIcons.uvIndex,
                  color: context.theme.colors.white,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            context.translations.lastUpdateValue(DateTime.now()),
            style: context.theme.textTheme.labelMedium,
          ),
          const SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }
}
