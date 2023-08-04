import 'package:go_router/go_router.dart';

import '../failures/failures.dart';
import '../screens/screens.dart';

final router = GoRouter(
  initialLocation: '/onboarding',
  routes: <GoRoute>[
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnbaordingScreen(),
    ),
    GoRoute(
      path: '/location',
      builder: (context, state) => const LocationScreen(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const WeatherScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: '/failure',
      builder: (context, state) => FailureScreen(
        failure: state.extra as Failure,
      ),
    ),
  ],
);
