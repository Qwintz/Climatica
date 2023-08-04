import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../extensions/extensions.dart';
import '../themes/themes.dart';
import '../widgets/widgets.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

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
                'assets/images/svg/location.svg',
              ),
            ),
            const SizedBox(
              height: 72.0,
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: const Icon(ClimaticaIcons.addLocation),
                hintText: context.translations.whereAreYou,
              ),
            ),
            const SizedBox(
              height: 32.0,
            ),
            Text(
              context.translations.locationText,
              style: context.theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 32.0,
            ),
            const PopularCities(),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.replace('/'),
                child: Text(
                  context.translations.next,
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
      resizeToAvoidBottomInset: false,
    );
  }
}
