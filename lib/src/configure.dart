import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'api/api.dart';
import 'models/models.dart';
import 'repositories/repositories.dart';

const settingsBoxName = 'settings';
const weatherBoxName = 'weather';

Future<void> configurate() async {
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
    ..registerFactory<WeatherAPI>(() => WeatherAPI(sl<Dio>()))
    ..registerLazySingleton<SettingsRepository>(
        () => SettingsRepository(settingsBox))
    ..registerFactory<WeatherRepository>(
        () => WeatherRepository(sl<WeatherAPI>(), weatherBox));
}
