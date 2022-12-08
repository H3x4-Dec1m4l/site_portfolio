import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:my_site_portfolio/main.dart';
import 'package:my_site_portfolio/utils/routes.dart';

class CardApresentation extends StatefulWidget {
  const CardApresentation({super.key});

  @override
  State<CardApresentation> createState() => _CardApresentationState();
}

class _CardApresentationState extends State<CardApresentation> {
  @override
  Widget build(BuildContext context) {
    var locale = Localizations.localeOf(context);
    return Container(
      height: 1800,
      width: double.infinity,
      child: Card(
        color: Colors.black12,
        child: Column(
          children: [
            Container(
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //botão de troca de linguagem
                  Container(
                    margin: EdgeInsets.only(left: 100),
                    alignment: Alignment.centerRight,
                    height: 40,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        final myApp =
                            context.findAncestorStateOfType<MyHomePageState>()!;
                        myApp.changeLocale(locale == Locale('pt', 'BR')
                            ? Locale('en', 'US')
                            : Locale('pt', 'BR'));
                      },
                      child: Text('change_language'.i18n()),
                    ),
                  ),
                  //container card#1
                  Container(
                    height: 160,
                    width: 350,
                    child: Card(
                      color: Colors.black38,
                      margin: EdgeInsets.only(
                          bottom: 20, left: 20, right: 20, top: 20),
                      elevation: 4,
                      child: Center(
                        child: Text(
                          'apresentation'.i18n(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  //Container card#2
                  Container(
                    child: Card(
                      color: Colors.black38,
                      child: Text('jump_to_portfolio'.i18n()),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.only(bottom: 10, left: 100, top: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(AppRoutes.PORTFOLIO_PAGE);
                      },
                      child: Text('see_my_portfolio'.i18n()),
                    ),
                  ),
                  //container card#3
                  Container(
                    width: 600,
                    child: Card(
                      color: Colors.black38,
                      child: Text('more_about_me'.i18n()),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
