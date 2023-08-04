import 'package:flutter/material.dart';

import '../extensions/extensions.dart';

class WeatherStat extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget icon;
  final Color? color;

  const WeatherStat({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        leading: Container(
          width: 48.0,
          height: 48.0,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: icon,
        ),
        title: Text(
          title,
          style: context.theme.textTheme.titleLarge,
        ),
        subtitle: Text(
          subtitle,
          style: context.theme.textTheme.labelMedium,
        ),
      ),
    );
  }
}
