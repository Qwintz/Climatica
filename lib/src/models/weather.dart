import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'weather.g.dart';

@JsonSerializable()
@HiveType(typeId: 2)
class Weather extends HiveObject with EquatableMixin {
  @JsonKey(name: 'time')
  @HiveField(0)
  final DateTime time;

  @JsonKey(name: 'values')
  @HiveField(1)
  final WeatherValues values;

  Weather({
    required this.time,
    required this.values,
  });

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);

  Weather copyWith({
    DateTime? time,
    WeatherValues? values,
  }) =>
      Weather(
        time: time ?? this.time,
        values: values ?? this.values,
      );

  @override
  List<Object?> get props => [
        time,
        values,
      ];
}
