import 'package:flutter/material.dart';

import '../extensions/extensions.dart';

class SettingTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget icon;
  final Color? color;
  final void Function() onPressed;

  const SettingTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.comfortable,
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
        style: context.theme.textTheme.titleMedium,
      ),
      subtitle: Text(
        subtitle,
        style: context.theme.textTheme.labelMedium,
      ),
      onTap: onPressed,
    );
  }
}
