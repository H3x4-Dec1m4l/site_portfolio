import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:my_site_portfolio/utils/media_archives.dart';
import 'package:video_player/video_player.dart';
import '../components/description_cards_video/shopApp_description.dart';
import '../Models/responsive_widget.dart';

class DescriptionShopAppPage extends StatefulWidget {
  const DescriptionShopAppPage({super.key});

  @override
  State<DescriptionShopAppPage> createState() => _DescriptionShopAppPage();
}

class _DescriptionShopAppPage extends State<DescriptionShopAppPage> {
  // VideoPlayerController? _videoPlayerShop;

  // @override
  // void initState() {
  //   super.initState();
  //   _videoPlayerShop =
  //       VideoPlayerController.asset('assets/video/portfolio2.mp4')
  //         ..initialize().then((context) {
  //           _videoPlayerShop!.setVolume(0);
  //           _videoPlayerShop!.play();
  //           _videoPlayerShop!.setLooping(true);
  //           setState(() {});
  //         });
  // }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return ResponsiveWidget.isSmallScreen(context)
          //Celular Resolution
          ? Scaffold(
              body: CustomScrollView(slivers: [
              SliverAppBar(
                expandedHeight: 600,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text('shopApp_description'.i18n()),
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        height: 300,
                        width: 500,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              child: Card(
                                child: SizedBox.expand(
                                  child: FittedBox(
                                    fit: BoxFit.cover,
                                    child: SizedBox(
                                      child: Image.asset(
                                          ImageAssets.shopPortfoioPhoto),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const DecoratedBox(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                        begin: Alignment(0, 0.8),
                        end: Alignment(0, 0),
                        colors: [
                          Color.fromRGBO(0, 0, 0, 0.8),
                          Color.fromRGBO(0, 0, 0, 0)
                        ],
                      )))
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    ShoAppDescriptionItem() //aqui vai o componente shopAppDescription
                  ],
                ),
              )
            ]))
          //PC Resolution
          : Scaffold(
              body: CustomScrollView(slivers: [
                SliverAppBar(
                  expandedHeight: 600,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text('shopApp_description'.i18n()),
                    background: Stack(
                      fit: StackFit.expand,
                      children: [
                        Container(
                          height: 300,
                          width: 500,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                child: Card(
                                  child: SizedBox.expand(
                                    child: FittedBox(
                                      fit: BoxFit.cover,
                                      child: SizedBox(
                                        child: Image.asset(
                                            ImageAssets.shopPortfoioPhoto, fit: BoxFit.cover,),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const DecoratedBox(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                          begin: Alignment(0, 0.8),
                          end: Alignment(0, 0),
                          colors: [
                            Color.fromRGBO(0, 0, 0, 0.8),
                            Color.fromRGBO(0, 0, 0, 0)
                          ],
                        )))
                      ],
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      ShoAppDescriptionItem() //aqui vai o componente shopAppDescription
                    ],
                  ),
                )
              ]),
            );
    });
  }
}
