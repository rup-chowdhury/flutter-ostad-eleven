import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  Locale _currentLocale = Locale('en');

  Locale get currentLocale => _currentLocale;

  void changeLocale(Locale newLocale) {
    if (_currentLocale == newLocale) return;

    _currentLocale = newLocale;
    notifyListeners();
  }
}
