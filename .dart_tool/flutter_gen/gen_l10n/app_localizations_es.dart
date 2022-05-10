


import 'app_localizations.dart';

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get language => 'Español';

  @override
  String get helloWorld => 'Hola Mundo!';

  @override
  String hello(String username) {
    return 'Hola $username';
  }
}
