import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'settings.g.dart';

@HiveType(typeId: 0)
class Settings extends HiveObject with EquatableMixin {
  @HiveField(0)
  final String location;

  @HiveField(1)
  final bool isFahrenheit;

  @HiveField(2)
  final int? themeMode;

  @HiveField(3)
  final String? locale;

  Settings({
    this.location = 'Vladivostok',
    this.isFahrenheit = false,
    this.themeMode,
    this.locale,
  });

  Settings copyWith({
    String? location,
    bool? isFahrenheit,
    int? themeMode,
    String? locale,
  }) =>
      Settings(
        location: location ?? this.location,
        isFahrenheit: isFahrenheit ?? this.isFahrenheit,
        themeMode: this.themeMode,
        locale: this.locale,
      );

  @override
  List<Object?> get props => [
        location,
        isFahrenheit,
        themeMode,
        locale,
      ];
}
