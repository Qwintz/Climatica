// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_values.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeatherValuesAdapter extends TypeAdapter<WeatherValues> {
  @override
  final int typeId = 3;

  @override
  WeatherValues read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeatherValues(
      temperature: fields[0] as double,
      humidity: fields[1] as int,
      windSpeed: fields[2] as double,
      precipitation: fields[3] as int,
      visibility: fields[4] as double,
      uvIndex: fields[5] as int,
      code: fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, WeatherValues obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.temperature)
      ..writeByte(1)
      ..write(obj.humidity)
      ..writeByte(2)
      ..write(obj.windSpeed)
      ..writeByte(3)
      ..write(obj.precipitation)
      ..writeByte(4)
      ..write(obj.visibility)
      ..writeByte(5)
      ..write(obj.uvIndex)
      ..writeByte(6)
      ..write(obj.code);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherValuesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherValues _$WeatherValuesFromJson(Map<String, dynamic> json) =>
    WeatherValues(
      temperature: (json['temperature'] as num).toDouble(),
      humidity: json['humidity'] as int,
      windSpeed: (json['windSpeed'] as num).toDouble(),
      precipitation: json['precipitationProbability'] as int,
      visibility: (json['visibility'] as num).toDouble(),
      uvIndex: json['uvIndex'] as int,
      code: json['weatherCode'] as int,
    );

Map<String, dynamic> _$WeatherValuesToJson(WeatherValues instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'humidity': instance.humidity,
      'windSpeed': instance.windSpeed,
      'precipitationProbability': instance.precipitation,
      'visibility': instance.visibility,
      'uvIndex': instance.uvIndex,
      'weatherCode': instance.code,
    };
