// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_site_portfolio/utils/linksExternos.dart';
import 'package:my_site_portfolio/utils/media_archives.dart';
import 'package:my_site_portfolio/utils/routes.dart';
import 'package:my_site_portfolio/widgets/style_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/footer_site.dart';
import 'package:localization/localization.dart';
// import 'package:multi_responsive/models/screen_resolution_model.dart';
import '../Models/responsive_widget.dart';
import '../widgets/forwarding_routes_widgets.dart';

class InitialPageScreenItem extends StatefulWidget {
  const InitialPageScreenItem({super.key});

  @override
  State<InitialPageScreenItem> createState() => _InitialPageScreenItemState();
}

class _InitialPageScreenItemState extends State<InitialPageScreenItem> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return ResponsiveWidget.isSmallScreen(context)
        ? SingleChildScrollView(
            child: SizedBox(
              height: 1000,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //       IconButton(
                  //   tooltip: 'site_home_page'.i18n(),
                  //   iconSize: 60,
                  //   onPressed: () {},
                  //   icon: Icon(Icons.home_rounded),
                  // ),
                  const SizedBox(height: 125),
                  //Linha de rotas e redes sociais
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //Botão de rotas
                      Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width * .48,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.5, 1],
                            colors: [
                              Color(0xFF491D0B),
                              Color(0xFF9D4623),
                            ],
                          ),
                        ),
                        child: SizedBox.expand(
                          child: TextButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'routes'.i18n(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: '',
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  child: Image.asset(ImageAssets.icon_route),
                                  height: 28,
                                  width: 28,
                                )
                              ],
                            ),
                            onPressed: () {
                              //function
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      actions: [
                                        IconButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          icon: const Icon(
                                              Icons.arrow_back_outlined),
                                        ),
                                      ],
                                      backgroundColor: Colors.black45,
                                      content: SizedBox(
                                        height: 350,
                                        width: 100,
                                        child: Column(
                                          children: [
                                            ForwardingRoutesWidgets(
                                              text: 'see_my_works'.i18n(),
                                              route: AppRoutes.PORTFOLIO_PAGE,
                                              color: Colors.white,
                                            ),
                                            SizedBox(height: 10),
                                            ForwardingRoutesWidgets(
                                              text: 'get_to_know_me_better'
                                                  .i18n(),
                                              route: AppRoutes.HOME_PAGE,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                          ),
                        ),
                      ),
                      //Botão de redes sociais
                      Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width * .48,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.5, 1],
                            colors: [
                              Color(0xFF491D0B),
                              Color(0xFF9D4623),
                            ],
                          ),
                        ),
                        child: SizedBox.expand(
                          child: TextButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'social_networks'.i18n(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: '',
                                      fontSize: 20),
                                ),
                                // SizedBox(width: MediaQuery.of(context).size.width *.05),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * .15,
                                  width:
                                      MediaQuery.of(context).size.width * .13,
                                  child: Image.asset(
                                    ImageAssets.icon_socialNetwork,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.black45,
                                      actions: [
                                        IconButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            icon: const Icon(
                                                Icons.arrow_back_outlined)),
                                      ],
                                      content: SingleChildScrollView(
                                        child: SizedBox(
                                          height: 1800,
                                          child: Column(
                                            children: [
                                              //BOTÃO INSTAGRAM PROFISSIONAL
                                              InkWell(
                                                child: SizedBox(
                                                  child: Image.asset(
                                                    ImageAssets
                                                        .Instagram_professional_icon,
                                                  ),
                                                ),
                                                onTap: () {
                                                  // Uri _url = Uri.parse(LinksExternos.linkProfessionalInsta);
                                                  // launchUrl(_url);
                                                  showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        return AlertDialog(
                                                          backgroundColor:
                                                              Color.fromARGB(
                                                                  246, 0, 0, 0),
                                                          content: Container(
                                                            color: Colors.black,
                                                            child: Text(
                                                                'soon'.i18n()),
                                                          ),
                                                          actions: [
                                                            TextButton(
                                                                onPressed: () {
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop();
                                                                },
                                                                child: Text(
                                                                    'back'
                                                                        .i18n()))
                                                          ],
                                                        );
                                                      });
                                                },
                                              ),

                                              // BOTÃO INSTAGRAM PESSOAL
                                              InkWell(
                                                child: SizedBox(
                                                  child: Image.asset(
                                                    ImageAssets
                                                        .instagram_personal_icon,
                                                  ),
                                                ),
                                                onTap: () {
                                                  Uri _url = Uri.parse(
                                                      LinksExternos
                                                          .linkPersonalInsta);
                                                  launchUrl(_url);
                                                },
                                              ),

                                              //BOTÃO PÁGINA FACEBOOK
                                              InkWell(
                                                child: SizedBox(
                                                  child: Image.asset(
                                                    ImageAssets
                                                        .facebook_page_icon,
                                                  ),
                                                ),
                                                onTap: () {
                                                  // Uri _url = Uri.parse(LinksExternos.linkProfessionalInsta);
                                                  // launchUrl(_url);
                                                  showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        return AlertDialog(
                                                          backgroundColor:
                                                              Color.fromARGB(
                                                                  246, 0, 0, 0),
                                                          content: Container(
                                                            color: Colors.black,
                                                            child: Text(
                                                                'soon'.i18n()),
                                                          ),
                                                          actions: [
                                                            TextButton(
                                                                onPressed: () {
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop();
                                                                },
                                                                child: Text(
                                                                    'back'
                                                                        .i18n()))
                                                          ],
                                                        );
                                                      });
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 150),
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
                          color: const Color.fromARGB(76, 11, 50, 224),
                          child: SingleChildScrollView(
                            child: TextBorder(
                              text: 'cardApresentation'.i18n(),
                              sizeText: 20,
                              colorText: Colors.white,
                              blurRadius: 0,
                              fontFamily: 'Philosopher',
                              fontWeight: FontWeight.w700,
                              dx: 2.5,
                              dy: 1,
                              colorBorder: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        // BOTÕES DE NAVEGAÇÃO
                        // Row(
                        //   mainAxisSize: MainAxisSize.max,
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     //botão me conhecer melhor
                        //     // SizedBox(
                        //     //     width: MediaQuery.of(context).size.width * .02),
                        //     ElevatedButton(
                        //       onPressed: () {
                        //         Navigator.of(context)
                        //             .pushNamed(AppRoutes.HOME_PAGE);
                        //       },
                        //       style: ButtonStyle(
                        //           backgroundColor: MaterialStateProperty.all(
                        //               const Color.fromARGB(255, 3, 97, 121))),
                        //       child: Text(
                        //         'get_to_know_me_better'.i18n(),
                        //         style: const TextStyle(
                        //           fontFamily: 'Permanent Marker',
                        //           fontSize: 14,
                        //         ),
                        //       ),
                        //     ),
                        //     // SizedBox(
                        //     //     width: MediaQuery.of(context).size.width * .10),
                        //     //botão portfólio
                        //     ElevatedButton(
                        //       onPressed: () {
                        //         Navigator.of(context)
                        //             .pushNamed(AppRoutes.PORTFOLIO_PAGE);
                        //       },
                        //       style: ButtonStyle(
                        //           backgroundColor: MaterialStateProperty.all(
                        //               const Color.fromARGB(255, 3, 97, 121))),
                        //       child: Text(
                        //         'see_my_works'.i18n(),
                        //         style: const TextStyle(
                        //           fontFamily: 'Permanent Marker',
                        //           fontSize: 15,
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),

                  //Rodapé do site
                  const SizedBox(height: 278),
                  const SingleChildScrollView(
                    child: FooterWeb(),
                  )
                ],
              ),
            ),
          )
        : //Site no PC
        SingleChildScrollView(
            child: SizedBox(
              height: 900,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      //
                      Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width * .45,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.5, 1],
                            colors: [
                              Color.fromARGB(255, 73, 69, 11),
                              Color(0xFF9D4623),
                            ],
                          ),
                        ),
                        child: SizedBox.expand(
                          child: TextButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'routes'.i18n(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: '',
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  child: Image.asset(
                                    ImageAssets.icon_route,
                                  ),
                                  height: 28,
                                  width: 28,
                                )
                              ],
                            ),
                            onPressed: () {
                              //function
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      actions: [
                                        IconButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          icon: const Icon(
                                              Icons.arrow_back_outlined),
                                        ),
                                      ],
                                      backgroundColor: Colors.black45,
                                      content: SizedBox(
                                        height: 350,
                                        width: 100,
                                        child: Column(
                                          children: [
                                            ForwardingRoutesWidgets(
                                              text: 'my_portfolio'.i18n(),
                                              route: AppRoutes.PORTFOLIO_PAGE,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  //Rodapé do site PC
                  const SizedBox(height: 146),
                  const FooterWeb(),
                ],
              ),
            ),
          );
  }
}
