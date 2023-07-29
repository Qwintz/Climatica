import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
@HiveType(typeId: 4)
class Location extends HiveObject with EquatableMixin {
  @JsonKey(name: 'name')
  @HiveField(0)
  final String name;

  @JsonKey(name: 'lat')
  @HiveField(1)
  final double latitude;

  @JsonKey(name: 'lon')
  @HiveField(2)
  final double longitude;

  Location({
    required this.name,
    required this.latitude,
    required this.longitude,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  Location copyWith({
    String? name,
    double? latitude,
    double? longitude,
  }) =>
      Location(
        name: name ?? this.name,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
      );

  @override
  List<Object?> get props => [
        name,
        latitude,
        longitude,
      ];
}
