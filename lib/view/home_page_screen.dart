import 'package:flutter/material.dart';
import 'package:my_site_portfolio/components/homePage_presentation.dart';
import 'package:localization/localization.dart';
import 'package:my_site_portfolio/components/language_change.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(183, 22, 20, 20),
        title: Text('subtitle'.i18n()),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/fundoUniverse.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: <Widget>[
              // Container(
              //   alignment: Alignment.centerRight,
              //   child: LanguageChange(),
              // ),
              CardApresentation(),
            ],
          ),
        ),
      ),
    );
  }
}
