import 'package:flutter/material.dart';

class Themeprovider extends ChangeNotifier {
  bool _isdarmode = false;

  bool get isdarkmode => _isdarmode;

  void toggle() {
    _isdarmode = !_isdarmode;
    notifyListeners();
  }

  ThemeMode get currentMode => isdarkmode ? ThemeMode.dark : ThemeMode.light;
}
