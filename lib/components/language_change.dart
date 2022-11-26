import 'package:flutter/material.dart';
import 'package:my_site_portfolio/main.dart';
import 'package:localization/localization.dart';

class LanguageChange extends StatefulWidget {
  const LanguageChange({super.key});

  @override
  State<LanguageChange> createState() => _LanguageChangeState();
}

class _LanguageChangeState extends State<LanguageChange> {
  @override
  Widget build(BuildContext context) {
    var locale = Localizations.localeOf(context);

    return Container(
      height: 40,
      width: 200,
      child: ElevatedButton(
        onPressed: () {
          final myApp = context.findAncestorStateOfType<MyHomePageState>()!;
          setState(() {
            myApp.changeLocale(locale == Locale('pt', 'BR')
                ? const Locale('en', 'US')
                : const Locale('pt', 'BR'));
          });
        },
        child: Text('change_language'.i18n()),
      ),
    );
  }
}
