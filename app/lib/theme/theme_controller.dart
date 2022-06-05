import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:core/utils/secure_utils.dart';

final themeProvider = ChangeNotifierProvider((ref) => ThemeNotifier());

class ThemeNotifier extends ChangeNotifier {
  late bool _isDarkTheme = false;
  static const String themeName = 'isDarkTheme';

  ThemeNotifier() {
    initTheme();
  }

  initTheme() async {
    final data = await SecureUtil.readData(themeName);
    _isDarkTheme = data == 'true';
  }

  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    SecureUtil.writeData(themeName, _isDarkTheme.toString());
    notifyListeners();
  }
}
