import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../extensions/extensions.dart';
import '../failures/failures.dart';
import '../themes/themes.dart';

class FailureScreen extends StatelessWidget {
  final Failure failure;

  const FailureScreen({
    super.key,
    required this.failure,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(ClimaticaIcons.settings),
            onPressed: () => context.push('/settings'),
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
                'assets/images/svg/failure.svg',
              ),
            ),
            const SizedBox(
              height: 72.0,
            ),
            Text(
              context.translations.failure,
              style: context.theme.textTheme.displayMedium,
            ),
            const SizedBox(
              height: 32.0,
            ),
            Text(
              _buildFailureText(context, failure),
              style: context.theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: _buildButton(context, failure),
            ),
            const SizedBox(
              height: 16.0,
            ),
          ],
        ),
      ),
    );
  }

  String _buildFailureText(BuildContext context, Failure failure) {
    if (failure is APIFaulure) {
      return context.translations.locationFailure;
    } else if (failure is NetworkFailure) {
      return context.translations.noInternetFailure;
    } else {
      return context.translations.unknownFailure;
    }
  }

  Widget _buildButton(BuildContext context, Failure failure) {
    if (failure is APIFaulure) {
      return ElevatedButton(
        onPressed: () {},
        child: Text(
          context.translations.changeCity,
          style: context.theme.textTheme.labelLarge,
        ),
      );
    } else if (failure is NetworkFailure) {
      return ElevatedButton(
        onPressed: () {},
        child: Text(
          context.translations.tryAgain,
          style: context.theme.textTheme.labelLarge,
        ),
      );
    } else {
      return ElevatedButton(
        onPressed: () {},
        child: Text(
          context.translations.tryAgain,
          style: context.theme.textTheme.labelLarge,
        ),
      );
    }
  }
}
