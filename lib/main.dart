import 'package:flutter/material.dart';
import 'package:localization_app/provider/locale_provider.dart';
import 'package:provider/provider.dart';

import 'Localization/app_localization.dart';
import 'page/localization_app_page.dart';


void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  static GlobalKey<NavigatorState> navigatorKey =
  GlobalKey<NavigatorState>();
  // This widget is the root of your application.
  @override
    Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => LocaleProvider(),
      builder: (context, child) {
        final provider = Provider.of<LocaleProvider>(context);

        return MaterialApp(
          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            primaryColor: Colors.deepPurpleAccent,
          ),
          locale: provider.locale,
          // locale: Locale('en'),
          supportedLocales: AppLocalization.all,
          localizationsDelegates: AppLocalization.localizationsDelegates,
          home: MainPage(),
        );
      },
    );

  }


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: LocalizationAppPage(),
  );

}