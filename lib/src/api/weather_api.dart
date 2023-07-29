import 'package:dio/dio.dart';

import '../failures/failures.dart';

class WeatherAPI {
  final Dio _dio;

  const WeatherAPI(this._dio);

  Future<Response> fetchAPI(String location) async {
    try {
      return await _dio.getUri<Map<String, dynamic>>(
        Uri(
          scheme: 'HTTPS',
          host: 'api.tomorrow.io',
          path: 'v4/weather/realtime',
          query: 'location=$location',
        ),
        options: Options(
          headers: <String, String>{
            'accept': 'application/json',
          },
        ),
      );
    } catch (_) {
      throw const Failure(FailureType.api);
    }
  }
}
