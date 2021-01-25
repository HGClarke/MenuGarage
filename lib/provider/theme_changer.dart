import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeChanger extends ChangeNotifier {
  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;
  ThemeMode get currentTheme => _isDarkMode ? ThemeMode.dark : ThemeMode.light;

  static ThemeChanger of(BuildContext context, {bool listen: false}) {
    return Provider.of<ThemeChanger>(context, listen: listen);
  }

  void switchTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}
