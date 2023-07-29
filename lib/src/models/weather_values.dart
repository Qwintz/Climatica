import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather_values.g.dart';

@JsonSerializable()
@HiveType(typeId: 3)
class WeatherValues extends HiveObject with EquatableMixin {
  @JsonKey(name: 'temperature')
  @HiveField(0)
  final double temperature;

  @JsonKey(name: 'humidity')
  @HiveField(1)
  final int humidity;

  @JsonKey(name: 'windSpeed')
  @HiveField(2)
  final double windSpeed;

  @JsonKey(name: 'precipitationProbability')
  @HiveField(3)
  final int precipitation;

  @JsonKey(name: 'visibility')
  @HiveField(4)
  final double visibility;

  @JsonKey(name: 'uvIndex')
  @HiveField(5)
  final int uvIndex;

  @JsonKey(name: 'weatherCode')
  @HiveField(6)
  final int code;

  WeatherValues({
    required this.temperature,
    required this.humidity,
    required this.windSpeed,
    required this.precipitation,
    required this.visibility,
    required this.uvIndex,
    required this.code,
  });

  factory WeatherValues.fromJson(Map<String, dynamic> json) =>
      _$WeatherValuesFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherValuesToJson(this);

  WeatherValues copyWith({
    double? temperature,
    int? humidity,
    double? windSpeed,
    int? precipitation,
    double? visibility,
    int? uvIndex,
    int? code,
  }) =>
      WeatherValues(
        temperature: temperature ?? this.temperature,
        humidity: humidity ?? this.humidity,
        windSpeed: windSpeed ?? this.windSpeed,
        precipitation: precipitation ?? this.precipitation,
        visibility: visibility ?? this.visibility,
        uvIndex: uvIndex ?? this.uvIndex,
        code: code ?? this.code,
      );

  @override
  List<Object?> get props => [
        temperature,
        humidity,
        windSpeed,
        precipitation,
        visibility,
        uvIndex,
        code,
      ];
}
