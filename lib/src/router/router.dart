import 'package:go_router/go_router.dart';

import '../screens/screens.dart';

final router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (context, state) => const WeatherScreen(),
    ),
  ],
);
