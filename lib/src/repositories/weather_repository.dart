import 'package:hive_flutter/hive_flutter.dart';

import '../api/api.dart';
import '../failures/failures.dart';
import '../models/models.dart';

class WeatherRepository {
  final WeatherAPI _weatherAPI;
  final Box<RealtimeWeather> _box;

  const WeatherRepository(this._weatherAPI, this._box);

  Future<RealtimeWeather> fetchRealtimeWeather(String location) async {
    try {
      final response = await _weatherAPI.fetchAPI(location); // fetch from API
      final realtimeWeather = RealtimeWeather.fromJson(response.data!);
      await _box.put(0, realtimeWeather); // cache weather
      return realtimeWeather;
    } on Failure {
      final realtimeWeather = _box.get(0); // get from cache
      if (realtimeWeather != null) {
        return realtimeWeather;
      } else {
        throw const Failure(FailureType.database);
      }
    }
  }
}
