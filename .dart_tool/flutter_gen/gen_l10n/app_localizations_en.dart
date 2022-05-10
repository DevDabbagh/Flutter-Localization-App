


import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get language => 'English';

  @override
  String get helloWorld => 'Hello World!';

  @override
  String hello(String username) {
    return 'Hello $username';
  }
}
