import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../utils/linksExternos.dart';
// import '../../Models/search_text.dart';
import '../../Models/responsive_widget.dart';
import '../../widgets/style_widgets.dart';

class ShoAppDescriptionItem extends StatelessWidget {
  // const name({super.key});
  String cod3r = 'course_info'.i18n();

  @override
  Widget build(BuildContext context) {
    List<InlineSpan> formatText(
        {required String text,
        required String search,
        String route = '',
        String textFamily = '',
        String searchFamily = '',
        double textSize = 14,
        double searchSize = 14}) {
      List<String> parts = text.split(search);

      final List<InlineSpan> formattedText = [];
      for (int i = 0; i != parts.length; i++) {
        final part = parts[i];
        formattedText.add(
          TextSpan(
            style: TextStyle(
                color: Colors.white,
                fontFamily: textFamily,
                fontSize: textSize),
            text: part,
          ),
        );

        if (i < parts.length - 1) {
          formattedText.add(
            TextSpan(
              style: TextStyle(
                  color: Colors.blue,
                  fontFamily: searchFamily,
                  fontSize: searchSize),
              text: ' $search ',
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Uri _url = Uri.parse(route);
                  launchUrl(_url);
                },
            ),
          );
        }
      }

      return formattedText;
    }

    return ResponsiveWidget.isSmallScreen(context)
        //Celular Resolution
        ? SizedBox()
        //PC Resolution
        : SizedBox(
            child: LayoutBuilder(builder: (_, constraints) {
              return Container(
                height: 1800,
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
                                    ...formatText(
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
                      //App Features
                      SizedBox(
                        // height: MediaQuery.of(context).size.height * .30,
                        width: constraints.maxWidth * .35,
                        child: Card(
                          color: Colors.black12,
                          child: Column(
                            children: [
                              // Text('app_functionality'.i18n()),
                              RichText(
                                  text: TextSpan(children: [
                                ...formatText(
                                    text: 'app_functionality'.i18n(),
                                    textSize: 16,
                                    search: 'Firebase',
                                    searchSize: 16,
                                    route: LinksExternos.whatIsFirebase,
                                    textFamily: 'Philosopher'),
                                    TextSpan(text: 'moreInfo'.i18n(), style: TextStyle(color: Colors.red)),
                                ...formatText(text: 'whatIsServer'.i18n(), search: 'servidor', textSize: 13,route: LinksExternos.whatIsServer, searchSize: 13, searchFamily: 'Permanent Marker'),
                                ...formatText(text: 'whatIsAppData'.i18n(), search: 'dados', textSize: 12,route: LinksExternos.whatIsAppData, searchSize: 12, searchFamily: 'Permanent Marker')
                              ])),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
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