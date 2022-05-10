


import 'app_localizations.dart';

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get language => 'Deutsch';

  @override
  String get helloWorld => 'Hallo Welt!';

  @override
  String hello(String username) {
    return 'Hallo $username';
  }
}
