import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_site_portfolio/utils/linksExternos.dart';
import 'package:my_site_portfolio/utils/routes.dart';

import '../widgets/footer_site.dart';
import 'package:localization/localization.dart';
// import 'package:multi_responsive/models/screen_resolution_model.dart';
import '../Models/responsive_widget.dart';

class InitialPageScreenItem extends StatefulWidget {
  const InitialPageScreenItem({super.key});

  @override
  State<InitialPageScreenItem> createState() => _InitialPageScreenItemState();
}

class _InitialPageScreenItemState extends State<InitialPageScreenItem> {
  @override
  Widget build(BuildContext context) {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    final Uri emailUrl = Uri(
      scheme: 'mailto',
      path: LinksExternos.email,
      query: encodeQueryParameters(<String, String>{
        'subject': '',
      }),
    );
    // log(emailUrl.toString());

    // Uri emailUrl = Uri.parse(LinksExternos.email);
    var screenSize = MediaQuery.of(context).size;

    return ResponsiveWidget.isSmallScreen(context)
        ? SingleChildScrollView(
            child: SizedBox(
                height: 1035,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        // height: MediaQuery.of(context).size.height *.09,
                        ),
                    /*  Container(
                      child: ElevatedButton(
                        onPressed: () {
                          final myApp = context
                              .findAncestorStateOfType<MyHomePageState>()!;
                          myApp.changeLocale(locale == const Locale('pt', 'BR')
                              ? const Locale('en', 'US')
                              : const Locale('pt', 'BR'));
                        },
                        child: Text(
                          'change_language'.i18n(),
                          style: TextStyle(
                            fontFamily: 'Permanent Marker',
                            fontSize: MediaQuery.of(context).size.height * .025,
                          ),
                        ),
                      ),
                    ), */
                    // ),
                    //Card Apresentando o meu Site

                    SizedBox(
                      width: MediaQuery.of(context).size.width * .95,
                      child: Column(
                        children: [
                          Card(
                            elevation: 9,
                            color: Color.fromARGB(76, 11, 50, 224),
                            child: SingleChildScrollView(
                              child: Text(
                                'cardApresentation'.i18n(),
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Philosopher',
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // BOTÕES DE NAVEGAÇÃO
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //botão me conhecer melhor
                              // SizedBox(
                              //     width: MediaQuery.of(context).size.width * .02),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(AppRoutes.HOME_PAGE);
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromARGB(255, 3, 97, 121))),
                                child: Text(
                                  'get_to_know_me_better'.i18n(),
                                  style: const TextStyle(
                                    fontFamily: 'Permanent Marker',
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //     width: MediaQuery.of(context).size.width * .10),
                              //botão portfólio
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(AppRoutes.PORTFOLIO_PAGE);
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromARGB(255, 3, 97, 121))),
                                child: Text(
                                  'see_my_works'.i18n(),
                                  style: const TextStyle(
                                    fontFamily: 'Permanent Marker',
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //Rodapé do site
                    SingleChildScrollView(
                      child: FooterWeb(),
                    )
                  ],
                )),
          )
        : //Site no PC
        SingleChildScrollView(
            child: SizedBox(
              height: 900,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 100),
                  Row(
                    children: [
                      SizedBox(
                        width: screenSize.width / 10,
                      ),
                      Container(
                        width: screenSize.width / 4,
                        child: Card(
                          color: Colors.black26,
                          child: Text(
                            'cardApresentation'.i18n(),
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Philosopher',
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //Rodapé do site PC
                  FooterWeb(),
                ],
              ),
            ),
          );
  }
}
