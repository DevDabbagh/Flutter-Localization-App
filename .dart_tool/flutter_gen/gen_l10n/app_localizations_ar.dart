


import 'app_localizations.dart';

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get language => 'العربية';

  @override
  String get helloWorld => '!مرحبا بالعالم';

  @override
  String hello(String username) {
    return 'مرحبا $username';
  }
}
