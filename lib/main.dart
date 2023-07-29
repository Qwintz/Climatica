import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'src/api/api.dart';
import 'src/app.dart';
import 'src/models/models.dart';
import 'src/repositories/repositories.dart';

const settingsBoxName = 'settings';
const weatherBoxName = 'weather';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive
    ..registerAdapter<Settings>(SettingsAdapter())
    ..registerAdapter<RealtimeWeather>(RealtimeWeatherAdapter())
    ..registerAdapter<Weather>(WeatherAdapter())
    ..registerAdapter<WeatherValues>(WeatherValuesAdapter())
    ..registerAdapter<Location>(LocationAdapter());

  final settingsBox = await Hive.openBox<Settings>(settingsBoxName);
  final weatherBox = await Hive.openBox<RealtimeWeather>(weatherBoxName);

  final sl = GetIt.I;
  sl
    ..registerLazySingleton<Dio>(() => Dio())
    ..registerLazySingleton<WeatherAPI>(() => WeatherAPI(sl<Dio>()))
    ..registerLazySingleton<SettingsRepository>(
        () => SettingsRepository(settingsBox))
    ..registerLazySingleton<WeatherRepository>(
        () => WeatherRepository(sl<WeatherAPI>(), weatherBox));

  runApp(const WeatherApp());
}
