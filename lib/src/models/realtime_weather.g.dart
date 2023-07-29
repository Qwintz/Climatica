// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realtime_weather.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RealtimeWeatherAdapter extends TypeAdapter<RealtimeWeather> {
  @override
  final int typeId = 1;

  @override
  RealtimeWeather read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RealtimeWeather(
      weather: fields[0] as Weather,
      location: fields[1] as Location,
    );
  }

  @override
  void write(BinaryWriter writer, RealtimeWeather obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.weather)
      ..writeByte(1)
      ..write(obj.location);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RealtimeWeatherAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RealtimeWeather _$RealtimeWeatherFromJson(Map<String, dynamic> json) =>
    RealtimeWeather(
      weather: Weather.fromJson(json['data'] as Map<String, dynamic>),
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RealtimeWeatherToJson(RealtimeWeather instance) =>
    <String, dynamic>{
      'data': instance.weather,
      'location': instance.location,
    };
