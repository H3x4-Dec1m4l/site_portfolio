import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:localization/localization.dart';
import 'package:my_site_portfolio/main.dart';
import 'package:my_site_portfolio/utils/routes.dart';
import 'package:multi_responsive/models/screen_resolution_model.dart';
import '../Models/responsive_widget.dart';

class CardApresentation extends StatefulWidget {
  const CardApresentation({super.key});

  @override
  State<CardApresentation> createState() => _CardApresentationState();
}

class _CardApresentationState extends State<CardApresentation> {
  @override
  Widget build(BuildContext context) {
    var locale = Localizations.localeOf(context);
    return ResponsiveWidget.isSmallScreen(context)
        ? LayoutBuilder(builder: (_, constraints) {
            return SizedBox(
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
                            margin: EdgeInsets.only(left: 200),
                            alignment: Alignment.centerRight,
                            height: 40,
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () {
                                final myApp = context.findAncestorStateOfType<
                                    MyHomePageState>()!;
                                myApp.changeLocale(
                                    locale == const Locale('pt', 'BR')
                                        ? const Locale('en', 'US')
                                        : const Locale('pt', 'BR'));
                              },
                              child: Text(
                                'change_language'.i18n(),
                                style:
                                    TextStyle(fontFamily: 'Permanent Marker'),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          //container card#1
                          Container(
                            // height: 160,
                            width: 400,
                            child: Card(
                              color: Colors.black38,
                              margin: const EdgeInsets.only(
                                  bottom: 20, left: 20, right: 20, top: 20),
                              elevation: 4,
                              child: Center(
                                child: Text(
                                  'apresentation'.i18n(),
                                  style: const TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Philosopher',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          //Container card#2
                          Container(
                            child: Card(
                              color: Colors.black38,
                              child: Text(
                                'jump_to_portfolio'.i18n(),
                                style: const TextStyle(
                                    fontFamily: 'Philosopher',
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            margin: const EdgeInsets.only(
                                bottom: 10, left: 20, top: 10),
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
                              child: Text(
                                'more_about_me'.i18n(),
                                style: const TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Philosopher',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          })
        : LayoutBuilder(builder: (_, constraints) {
            var resolution = PlatformScreen(
                width: constraints.maxWidth, height: constraints.maxHeight);
            return SizedBox(
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
                            margin: EdgeInsets.only(
                                left: constraints.maxWidth / 1.3),
                            alignment: Alignment.centerRight,
                            height: 40,
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () {
                                final myApp = context.findAncestorStateOfType<
                                    MyHomePageState>()!;
                                myApp.changeLocale(
                                    locale == const Locale('pt', 'BR')
                                        ? const Locale('en', 'US')
                                        : const Locale('pt', 'BR'));
                              },
                              child: Text(
                                'change_language'.i18n(),
                                style:
                                    TextStyle(fontFamily: 'Permanent Marker', fontSize: 18),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          //container card#1
                          Container(
                            // height: 160,
                            width: 400,
                            child: Card(
                              color: Colors.black38,
                              margin: const EdgeInsets.only(
                                  bottom: 20, left: 20, right: 20, top: 20),
                              elevation: 4,
                              child: Center(
                                child: Text(
                                  'apresentation'.i18n(),
                                  style: const TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Philosopher',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          //Container card#2
                          Container(
                            child: Card(
                              color: Colors.black38,
                              child: Text(
                                'jump_to_portfolio'.i18n(),
                                style: const TextStyle(
                                    fontFamily: 'Philosopher',
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            margin: const EdgeInsets.only(
                                bottom: 10, left: 20, top: 10),
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
                              child: Text(
                                'more_about_me'.i18n(),
                                style: const TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Philosopher',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
  }
}
