import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localization_app/Localization/app_localization.dart';

import '../widget/language_picker_widget.dart';

class  LocalizationAppPage extends StatefulWidget {

  @override
  _LocalizationAppPageState createState() => _LocalizationAppPageState();

   LocalizationAppPage({Key? key}) : super(key: key);
}

class _LocalizationAppPageState extends State<LocalizationAppPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.language),
          centerTitle: true,
          actions: [
            LanguagePickerWidget(),
            const SizedBox(width: 12),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  <Widget>[
              Text(

                AppLocalization.getString().hello("test"),
                style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              const Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Right -Top",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
              const Align(
                alignment: AlignmentDirectional.topEnd,
                child: Text(
                  "End -Top",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Left - Padding from left 30",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 30),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    "Start - Padding from start 30",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
