import 'package:flutter/material.dart';
// import 'package:flutter_gif/flutter_gif.dart';
import 'package:my_site_portfolio/Models/responsive_widget.dart';
import 'package:my_site_portfolio/utils/media_archives.dart';
// import 'package:my_site_portfolio/widgets/Animation_Button.dart';
// import 'package:get/get.dart';

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
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
                          stops: [0.1, 0.3],
                          colors: [
                            Color(0xFF491D0B),
                            Color(0xFF9D4623),
                          ],
                        ),
                      ),
                      child: SizedBox.expand(
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Rotas',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: '',
                                  fontSize: 20
                                ),
                              ),
                              SizedBox(
                                child: Image.asset(
                                  ImageArchives.icon_route,
                                ),
                                height: 28,
                                width: 28,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
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
                          colors: [
                            Color(0xFF491D0B),
                            Color(0xFF9D4623),
                          ],
                        ),
                      ),
                      child: Text('Text'),
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
