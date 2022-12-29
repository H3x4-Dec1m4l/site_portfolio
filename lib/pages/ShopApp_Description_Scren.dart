import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:video_player/video_player.dart';
import '../components/description_cards_video/shopApp_description.dart';
import '../Models/responsive_widget.dart';

class DescriptionShopAppView extends StatefulWidget {
  const DescriptionShopAppView({super.key});

  @override
  State<DescriptionShopAppView> createState() => _DescriptionShopAppView();
}

class _DescriptionShopAppView extends State<DescriptionShopAppView> {
  VideoPlayerController? _videoPlayerShop;

  @override
  void initState() {
    super.initState();
    _videoPlayerShop =
        VideoPlayerController.asset('assets/video/portfolio2.mp4')
          ..initialize().then((context) {
            _videoPlayerShop!.setVolume(0);
            _videoPlayerShop!.play();
            _videoPlayerShop!.setLooping(true);
            setState(() {});
          });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return ResponsiveWidget.isSmallScreen(context)
      //Celular Resolution
          ? Scaffold()
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
                                        height: _videoPlayerShop
                                                ?.value.size.height ??
                                            0,
                                        width: _videoPlayerShop
                                                ?.value.size.width ??
                                            0,
                                        child: VideoPlayer(_videoPlayerShop!),
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
