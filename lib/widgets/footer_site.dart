// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../Models/responsive_widget.dart';
import '../Models/bottom_bar_column.dart';
import 'package:localization/localization.dart';
import '../utils/linksExternos.dart';
import 'package:url_launcher/url_launcher.dart';
// import '../widgets/show_dialog.dart';

class FooterWeb extends StatelessWidget {
  const FooterWeb({
    super.key,
    this.heightSize,
  });
  final double? heightSize;

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
    // var screenSize = MediaQuery.of(context).size;
    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
            padding: const EdgeInsets.all(1),
            color: const Color.fromARGB(174, 38, 50, 56),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomBarColumn(
                      heading: 'about'.i18n(),
                      s1: 'about_me'.i18n(),
                      r1: '//colocar rota',
                      s2: 'about_the_site'.i18n(),
                      r2: '//colocar rota',
                      s3: 'about_contract'.i18n(),
                      r3: '//colocar rota',
                    ),
                    BottomBarColumn(
                      heading: 'help'.i18n(),
                      s1: 'services'.i18n(),
                      r1: '//colocar rota',
                      s2: 'evaluation'.i18n(),
                      r2: '//colocar rota',
                      s3: '', //não definido ainda
                      r3: '',
                    ),
                    BottomBarColumn(
                      heading: 'PORTFOLIO',
                      s1: 'GITHUB',
                      r1: LinksExternos.linkGitHub,
                      s2: 'Linkedin',
                      r2: LinksExternos.linkLinkedin,
                      s3: '', //não definido ainda
                      r3: '',
                    ),
                    Container(
                      color: Colors.blueGrey,
                      width: 2,
                      height: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'my_contacts'.i18n(),
                            style: const TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                showDialog(
                                  context: context,
                                  builder: ((context) {
                                    return AlertDialog(
                                        backgroundColor: Colors.black54,
                                        title:
                                            Text('contactme_followMe'.i18n()),
                                        content: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              //BOTÃO E-MAIL
                                              ElevatedButton(
                                                  onPressed: () async {
                                                    if (await canLaunchUrl(
                                                        emailUrl)) {
                                                      await launchUrl(emailUrl);
                                                    } else {
                                                      return showDialog(
                                                          context: context,
                                                          builder: (context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'ERROR'),
                                                              content: Text(
                                                                  'msgErrorEmail'
                                                                      .i18n()),
                                                              actions: <Widget>[
                                                                TextButton(
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  },
                                                                  child: Text(
                                                                      'close'
                                                                          .i18n()),
                                                                )
                                                              ],
                                                            );
                                                          });
                                                    }
                                                  },
                                                  child: const Text('E-MAIL')),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              //BOTÃO INSTA PROFISSIONAL
                                              ElevatedButton(
                                                  onPressed: () {
                                                    //Insta profissional
                                                  },
                                                  child: Text(
                                                      'INSTAGRAM ${'professional'.i18n().toUpperCase()}')),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              //BOTÃO PAGINA NO FACE
                                              ElevatedButton(
                                                  onPressed: () {
                                                    //pagina no face
                                                  },
                                                  child:
                                                      const Text('FACEBOOK')),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              //BOTÃO INSTAGRAM PESSOAL
                                              ElevatedButton(
                                                  onPressed: () {
                                                    Uri _urlInsta = Uri.parse(
                                                        LinksExternos
                                                            .linkPersonalInsta);
                                                    launchUrl(_urlInsta);
                                                  },
                                                  child: Text(
                                                      'INSTAGRAM ${'personal'.i18n().toUpperCase()}')),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                            ],
                                          ),
                                        ));
                                  }),
                                );
                              },
                          ),
                        ),
                       const SizedBox(height: 5),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.blueGrey,
                ),
                const SizedBox(height: 20),
                Text(
                  'version'.i18n(),
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          )
        : Container(
            width: double.infinity / 2,
            height: heightSize,
            padding: const EdgeInsets.all(1),
            color: const Color.fromARGB(174, 38, 50, 56),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomBarColumn(
                      heading: 'about'.i18n(),
                      s1: 'about_me'.i18n(),
                      r1: '//colocar rota',
                      s2: 'about_the_site'.i18n(),
                      r2: '//colocar rota',
                      s3: 'about_contract'.i18n(),
                      r3: '//colocar rota',
                    ),
                    BottomBarColumn(
                      heading: 'help'.i18n(),
                      s1: 'services'.i18n(),
                      r1: '//colocar rota',
                      s2: 'evaluation'.i18n(),
                      r2: '//colocar rota',
                      s3: 'report_bugs'.i18n(),
                      r3: '',
                    ),
                    BottomBarColumn(
                      heading: 'PORTFOLIO',
                      s1: 'GITHUB',
                      r1: LinksExternos.linkGitHub,
                      s2: 'Linkedin',
                      r2: LinksExternos.linkLinkedin,
                      s3: '', //não definido ainda
                      r3: '',
                    ),
                    Container(
                      color: Colors.blueGrey,
                      width: 2,
                      height: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'my_contacts'.i18n(),
                            style: const TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                showDialog(
                                  context: context,
                                  builder: ((context) {
                                    return AlertDialog(
                                        backgroundColor: Colors.black54,
                                        title:
                                            Text('contactme_followMe'.i18n()),
                                        content: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              //BOTÃO E-MAIL
                                              ElevatedButton(
                                                  onPressed: () async {
                                                    if (await canLaunchUrl(
                                                        emailUrl)) {
                                                      await launchUrl(emailUrl);
                                                    } else {
                                                      return showDialog(
                                                          context: context,
                                                          builder: (context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'ERROR'),
                                                              content: Text(
                                                                  'msgErrorEmail'
                                                                      .i18n()),
                                                              actions: <Widget>[
                                                                TextButton(
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  },
                                                                  child: Text(
                                                                      'close'
                                                                          .i18n()),
                                                                )
                                                              ],
                                                            );
                                                          });
                                                    }
                                                  },
                                                  child: const Text('E-MAIL')),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              //BOTÃO INSTA PROFISSIONAL
                                              ElevatedButton(
                                                  onPressed: () {
                                                    //Insta profissional
                                                  },
                                                  child: Text(
                                                      'INSTAGRAM ${'professional'.i18n().toUpperCase()}')),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              //BOTÃO PAGINA NO FACE
                                              ElevatedButton(
                                                  onPressed: () {
                                                    //pagina no face
                                                  },
                                                  child:
                                                      const Text('FACEBOOK')),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              //BOTÃO INSTAGRAM PESSOAL
                                              ElevatedButton(
                                                  onPressed: () {
                                                    Uri _urlInsta = Uri.parse(
                                                        LinksExternos
                                                            .linkPersonalInsta);
                                                    launchUrl(_urlInsta);
                                                  },
                                                  child: Text(
                                                      'INSTAGRAM ${'personal'.i18n().toUpperCase()}')),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                            ],
                                          ),
                                        ));
                                  }),
                                );
                              },
                          ),
                        ),
                       const SizedBox(height: 5),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.blueGrey,
                ),
                const SizedBox(height: 20),
                Text(
                  'version'.i18n(),
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          );
  }
}
