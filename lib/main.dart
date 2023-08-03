import 'package:flutter/material.dart';

import 'src/app.dart';
import 'src/configure.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configurate();
  runApp(const WeatherApp());
}
