import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:my_site_portfolio/utils/routes.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../utils/linksExternos.dart';
import '../../Models/search_text.dart';
import '../../Models/responsive_widget.dart';
import '../../widgets/style_widgets.dart';

class ShoAppDescriptionItem extends StatelessWidget {
  // const name({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        //Celular Resolution
        ? SizedBox()
        //PC Resolution
        : SizedBox(
            child: LayoutBuilder(builder: (_, constraints) {
              return Container(
                height: 2200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/view_pages/backgroundtop.png'),
                      fit: BoxFit.cover),
                ),
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      //course_info
                      TextBorder(
                          text: 'appProduction'.i18n(),
                          sizeText: 32,
                          colorText: Colors.white,
                          blurRadius: 0.1,
                          dx: 2,
                          dy: 2,
                          colorBorder: Colors.red),
                      const Divider(
                        height: 5,
                        thickness: 3,
                        indent: 500,
                        endIndent: 500,
                        color: Colors.red,
                      ),
                      //Course_info
                      SizedBox(
                        // height: MediaQuery.of(context).size.height * .30,
                        width: constraints.maxWidth * .35,
                        child: Card(
                          color: Colors.black12,
                          child: Column(
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: [
                                    ...TextSearch.formatText(
                                      text: 'course_info'.i18n(),
                                      search: 'Cod3r',
                                      route: LinksExternos.cod3rSite,
                                      textFamily: 'Philosopher',
                                      textSize: 16,
                                      searchSize: 16,
                                    ).toList(),
                                    TextSpan(
                                        text: 'aprovadoapp.com',
                                        style: const TextStyle(
                                            color: Colors.blue, fontSize: 16),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Uri url = Uri.parse(
                                                LinksExternos.aprovadoapp);
                                            launchUrl(url);
                                          })
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50),

                      //App Features
                      TextBorder(
                          text: 'appFeatures'.i18n(),
                          sizeText: 32,
                          colorText: Colors.white,
                          blurRadius: 0.1,
                          dx: 2,
                          dy: 2,
                          colorBorder: Colors.red),
                      const Divider(
                        height: 5,
                        thickness: 3,
                        indent: 500,
                        endIndent: 500,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: constraints.maxWidth * .35,
                        child: Card(
                          color: Colors.black12,
                          child: Column(children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  //App Features Description
                                  ...TextSearch.formatText(
                                      text: 'app_FeaturesDescription'.i18n(),
                                      textSize: 16,
                                      search: 'Firebase',
                                      searchSize: 16,
                                      route: LinksExternos.whatIsFirebase,
                                      textFamily: 'Philosopher'),
                                  //More Info
                                  TextSpan(
                                      text: 'moreInfo'.i18n(),
                                      style: TextStyle(color: Colors.red)),
                                  //What Is Server?
                                  ...TextSearch.formatText(
                                      text: 'whatIsServer'.i18n(),
                                      search: 'servidor',
                                      textSize: 13,
                                      route: LinksExternos.whatIsServer,
                                      searchSize: 13,
                                      searchFamily: 'Permanent Marker'),
                                  //What is Aplication Data?
                                  ...TextSearch.formatText(
                                      text: 'whatIsAppData'.i18n(),
                                      search: 'dados',
                                      textSize: 12,
                                      route: LinksExternos.whatIsAppData,
                                      searchSize: 12,
                                      searchFamily: 'Permanent Marker')
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                          ]),
                        ),
                      ),
                      SizedBox(height: 30),
                      //What I Learned
                      TextBorder(
                          text: 'whatI_learned'.i18n(),
                          sizeText: 32,
                          colorText: Colors.white,
                          blurRadius: 0.1,
                          dx: 2,
                          dy: 2,
                          colorBorder: Colors.red),
                      const Divider(
                        height: 5,
                        thickness: 3,
                        indent: 500,
                        endIndent: 500,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: constraints.maxWidth * .35,
                        child: Card(
                          color: Colors.black12,
                          child: Column(
                            children: [
                              Text(
                                'whatI_learned-text'.i18n(),
                                style: const TextStyle(
                                    fontFamily: 'Philosopher', fontSize: 16),
                              ),
                              SizedBox(height: 20),
                              RichText(
                                text: TextSpan(
                                    text: 'moreInfo'.i18n(),
                                    style: const TextStyle(color: Colors.white),
                                    children: [
                                      ...TextSearch.formatText(
                                          text: 'whatIs_API'.i18n(),
                                          search: 'API',
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return AlertDialog(
                                                      backgroundColor:
                                                          Colors.black87,
                                                      title: TextBorder(
                                                          text: 'whatIs_API'
                                                              .i18n(),
                                                          fontFamily:
                                                              'Philosopher',
                                                          sizeText: 25,
                                                          colorText:
                                                              Colors.white,
                                                          blurRadius: 0.1,
                                                          dx: 2,
                                                          dy: 2,
                                                          colorBorder:
                                                              Colors.red),
                                                      content:
                                                          SingleChildScrollView(
                                                        child: SizedBox(
                                                          width: constraints
                                                                  .maxWidth *
                                                              .35,
                                                          child: Column(
                                                            children: [
                                                              Text(
                                                                  'whatIs_API-text'
                                                                      .i18n())
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  });
                                            })
                                    ]),
                              ),
                             
                            ],
                          ),
                        ),
                      ),
                       SizedBox(height: 30),
                       //Considerações finais
                               TextBorder(
                          text: 'final_observations'.i18n(),
                          sizeText: 32,
                          colorText: Colors.white,
                          blurRadius: 0.1,
                          dx: 2,
                          dy: 2,
                          colorBorder: Colors.red),
                          const Divider(
                        height: 5,
                        thickness: 3,
                        indent: 500,
                        endIndent: 500,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: constraints.maxWidth * .35,
                        child: Card(
                          color: Colors.black12,
                          child: Column(
                           children: [
                             RichText(
                              text: TextSpan(children: [
                                ...TextSearch.formatText(text: 'final_observations-text'.i18n(), search: 'contrato')
                              ]),
                             ),
                             SizedBox(height: 20)
                           ],
                          ),
                        ) ,
                      ),
                      //Lugar onde criarei o Botão de download do App
                    ]), //final Column Pai
              );
            }),
          );
  }
}

                //Link da cod3r
                // Container(
                //   height: 300,
                //   width: 60,
                //   child: Column(
                //     children: [
                //       Text('Cod3r Link'),
                //       InkWell(
                //         onTap: (() {
                //           Uri _url = Uri.parse('');
                //           launchUrl(_url);
                //         }),
                //         child: Image.asset(
                //             'assets/images/images_buttons/cod3rButton.png'),
                //       ),
                //     ],
                //   ),
                // ),