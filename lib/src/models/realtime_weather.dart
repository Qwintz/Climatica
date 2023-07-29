import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'realtime_weather.g.dart';

@JsonSerializable()
@HiveType(typeId: 1)
class RealtimeWeather extends HiveObject with EquatableMixin {
  @JsonKey(name: 'data')
  @HiveField(0)
  final Weather weather;

  @JsonKey(name: 'location')
  @HiveField(1)
  final Location location;

  RealtimeWeather({
    required this.weather,
    required this.location,
  });

  factory RealtimeWeather.fromJson(Map<String, dynamic> json) =>
      _$RealtimeWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$RealtimeWeatherToJson(this);

  RealtimeWeather copyWith({
    Weather? weather,
    Location? location,
  }) =>
      RealtimeWeather(
        weather: weather ?? this.weather,
        location: location ?? this.location,
      );

  @override
  List<Object?> get props => [
        weather,
        location,
      ];
}
