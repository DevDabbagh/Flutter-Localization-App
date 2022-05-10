


import 'app_localizations.dart';

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get language => 'मानक हिन्दी';

  @override
  String get helloWorld => 'नमस्ते दुनिया!';

  @override
  String hello(String username) {
    return 'नमस्ते $username';
  }
}
