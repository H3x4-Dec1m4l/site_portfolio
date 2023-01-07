import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:flutter_gif/flutter_gif.dart';
import 'package:my_site_portfolio/Models/responsive_widget.dart';
import 'package:my_site_portfolio/utils/linksExternos.dart';
import 'package:my_site_portfolio/utils/media_archives.dart';
// import 'package:my_site_portfolio/widgets/Animation_Button.dart';
// import 'package:get/get.dart';
import 'package:localization/localization.dart';
import 'package:url_launcher/url_launcher.dart';

class ForwardingItem extends StatelessWidget {
  const ForwardingItem({super.key});

  @override
  Widget build(BuildContext context) {
    // final _icon_animattedRoute = AnimationButtonController();
    // _icon_animattedRoute.updateImageAsset(VideoArchives.icon_route);
    // _icon_animattedRoute.updateText('binguela');

    // final controller = Get.put(AnimationButtonController());

    return ResponsiveWidget.isSmallScreen(context)
        //Resolution cll
        ? SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 150),
                //Linha de rotas e redes sociais
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //Botão de rotas
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
                            Color(0xFF491D0B),
                            Color(0xFF9D4623),
                          ],
                        ),
                      ),
                      child: SizedBox.expand(
                        child: TextButton(
                          onPressed: () {
                            //function
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    backgroundColor: Colors.black45,
                                    content: SizedBox(
                                      height: 350,
                                      width: 100,
                                      child: Column(
                                        children: const [],
                                      ),
                                    ),
                                  );
                                });
                          },
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
                        ),
                      ),
                    ),
                    //Botão de redes sociais
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
                            Color(0xFF491D0B),
                            Color(0xFF9D4623),
                          ],
                        ),
                      ),
                      child: SizedBox.expand(
                        child: TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.black45,
                                      content: SingleChildScrollView(
                                        child: SizedBox(
                                          height: 1000,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .90,
                                          child: Column(
                                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              InkWell(
                                                onTap: (){
                                                  // Uri _url = Uri.parse(LinksExternos.linkProfessionalInsta);
                                                  // launchUrl(_url);
                                                  showDialog(context: context, builder: (context){
                                                    return AlertDialog(
                                                      backgroundColor: Colors.black54,
                                                      content: Container(
                                                        color: Colors.black,
                                                        child: Text('soon'.i18n()),
                                                      ),
                                                      actions: [
                                                        TextButton(onPressed: (){
                                                          Navigator.of(context).pop();
                                                        }, child: Text('back'.i18n()))
                                                      ],
                                                    );
                                                  });
                                                },
                                                child: Image.asset(ImageAssets.Instagram_professional_icon)
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            },
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
                                SizedBox(
                                  height: 120,
                                  width: 70,
                                  child: Image.asset(
                                    ImageAssets.icon_socialNetwork,
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        : //Resolution PC
        Container();
  }
}
