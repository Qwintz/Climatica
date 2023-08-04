import 'package:flutter/material.dart';

import '../extensions/extensions.dart';

class PopularCities extends StatelessWidget {
  final List<String> cities;

  const PopularCities({
    super.key,
    this.cities = const <String>[
      "Москва",
      "Санкт-Петербург",
      "Владивосток",
      "Сочи",
    ],
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          context.translations.popularCities,
          style: context.theme.textTheme.titleLarge,
        ),
        const SizedBox(
          width: double.infinity,
          height: 16.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Wrap(
            spacing: 16.0,
            direction: Axis.horizontal,
            children: cities
                .map((city) => FilledButton(
                      onPressed: () {},
                      child: Text(
                        city,
                        style: context.theme.textTheme.labelMedium,
                      ),
                    ))
                .toList(),
          ),
        )
      ],
    );
  }
}
