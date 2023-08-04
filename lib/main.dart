import 'package:flutter/material.dart';

import 'src/app.dart';
import 'src/configure.dart';

void main() async {
  await configurate();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const WeatherApp());
}
