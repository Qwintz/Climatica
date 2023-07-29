import 'package:hive_flutter/hive_flutter.dart';

import '../models/models.dart';

class SettingsRepository {
  final Box<Settings> _box;

  const SettingsRepository(this._box);

  Settings getSettings() => _box.get(0) ?? Settings();

  Future<void> saveSettings(Settings settings) async =>
      await _box.put(0, settings);
}
