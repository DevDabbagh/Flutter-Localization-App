import 'package:flutter/material.dart';

import '../l10n/l10n.dart';


class LocaleProvider extends ChangeNotifier {
   Locale? locale;

  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;


    this.locale = locale;
    notifyListeners();
  }

  void clearLocale() {
    locale = null;
    notifyListeners();
  }
}
