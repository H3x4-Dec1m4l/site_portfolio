import 'package:flutter/material.dart';
import 'package:my_site_portfolio/utils/media_archives.dart';
import 'package:video_player/video_player.dart';
import '../utils/routes.dart';
import 'package:localization/localization.dart';
import 'package:multi_responsive/models/screen_resolution_model.dart';
import '../Models/responsive_widget.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class CardVideoPortfolio extends StatefulWidget {
  const CardVideoPortfolio({super.key});

  @override
  State<CardVideoPortfolio> createState() => _CardVideoPortfolioState();
}

class _CardVideoPortfolioState extends State<CardVideoPortfolio> {
  // YoutubePlayerController? _portfolio1;

  // void initState() {
  //   super.initState();
  //   _portfolio1 = YoutubePlayerController(
  //     params: const YoutubePlayerParams(

  //       loop: true,

  //     ),

  //   );
  //   _portfolio1!.loadVideoById(
  //       videoId: 'vR-VT2GgF0Y',);
  //   // _portfolio1!.p
  // }

  VideoPlayerController? _videoPlayerControllerOne;
  VideoPlayerController? _videoPlayerControllerTwo;
  bool isLoading = true;
  // @override
  // void initState() {
  //   _videoPlayerControllerOne = VideoPlayerController.asset(
  //     'assets/video/portfolio2.mp4',
  //     //  closedCaptionFile: _loadCaptions(),
  //     // videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
  //   )..initialize().then((_) {

  //       setState(() {
  //         // _videoPlayerControllerOne!.initialize();
  //         _videoPlayerControllerOne!.play();
  //         _videoPlayerControllerOne!.setLooping(true);
  //         _videoPlayerControllerOne!.setVolume(0);
  //       });
  //     });

  //   _videoPlayerControllerTwo = VideoPlayerController.network(
  //     'https://www.youtube.com/watch?v=4F54nvotjvo',
  //     //  closedCaptionFile: _loadCaptions(),
  //     // videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
  //   )..initialize().then((value) {
  //       // _videoPlayerControllerTwo!.initialize();
  //       _videoPlayerControllerTwo!.play();
  //       _videoPlayerControllerTwo!.setLooping(true);
  //       _videoPlayerControllerTwo!.setVolume(0);
  //     });
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _videoPlayerControllerOne!.dispose();
  //   _videoPlayerControllerTwo!.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? LayoutBuilder(builder: (_, constraints) {
            var resolution = PlatformScreen(
                width: constraints.maxWidth, height: constraints.maxHeight);
            return Container(
              width: constraints.maxWidth,
              height: 1800,
              child: Column(
                children: [
                  //VIDEO FOOATBALL
                  // Container(
                  //   height: 300,
                  //   width: 500,
                  //   child: Card(
                  //     color: Colors.black38,
                  //     child: Stack(
                  //       children: [
                  //         ClipRRect(
                  //           borderRadius: const BorderRadius.only(
                  //               topLeft: Radius.circular(15),
                  //               topRight: Radius.circular(15),
                  //               bottomLeft: Radius.circular(20),
                  //               bottomRight: Radius.circular(20)),
                  //           child: SizedBox.expand(
                  //             child: FittedBox(
                  //               fit: BoxFit.cover,
                  //               child: SizedBox(),
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  //BOTÃO MAIS INFO FOOATBALL
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(134, 0, 155, 202),
                      ),
                    ),
                    child: const Text(
                      'FootBall Manager',
                      style: TextStyle(
                          fontFamily: 'Permanent Marker',
                          fontSize: 20,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                  //DESCRIÇÃO VIDEO FOOATBALL MANAGER PORTFOLIO
                  Container(
                    // height: 300,
                    width: 400,
                    child: Card(
                      color: Colors.black12,
                      child: Text(
                        'desc_video_1'.i18n(),
                        style: const TextStyle(
                            fontFamily: 'Philosopher', fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  //VIDEO SHOP PORTFOLIO
                  // Container(
                  //   height: 300,
                  //   width: 500,
                  //   child: Card(
                  //     color: Colors.black38,
                  //     child: ClipRRect(
                  //       borderRadius: const BorderRadius.only(
                  //           topLeft: Radius.circular(20),
                  //           topRight: Radius.circular(20),
                  //           bottomLeft: Radius.circular(20),
                  //           bottomRight: Radius.circular(20)),
                  //       child: SizedBox.expand(
                  //         child: FittedBox(
                  //           fit: BoxFit.cover,
                  //           child: SizedBox(),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  //BOTÃO MAIS INFO SHOP
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoutes.DESC_SHOPAPP);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(134, 0, 155, 202),
                      ),
                    ),
                    child: const Text(
                      'Shop App',
                      style: TextStyle(
                          fontFamily: 'Permanent Marker',
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  //DESCRIÇÃO VIDEO SHOP
                  Container(
                    // height: 300,
                    width: 400,
                    child: Card(
                      color: Colors.black12,
                      child: Text(
                        'desc_video_2'.i18n(),
                        style: const TextStyle(
                            fontFamily: 'Philosopher', fontSize: 20),
                      ),
                    ),
                  ),
                ], //FINAL COLUMN
              ),
            );
          })
        : //Resolução PC
        LayoutBuilder(builder: (context, constraints) {
            return SizedBox(
              height: 1000,
              child: Card(
                color: Colors.black12,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    // SizedBox(height: 200,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //
                        SizedBox(
                          width: 400,
                          child: Card(
                            color: Colors.black12,
                            child: Text(
                              'desc_video_1'.i18n(),
                              style: const TextStyle(
                                  fontFamily: 'Philosopher', fontSize: 16),
                            ),
                          ),
                        ),
                        //
                        SizedBox(
                          width: 400,
                          child: Card(
                            color: Colors.black12,
                            child: Text(
                              'desc_video_2'.i18n(),
                              style: const TextStyle(
                                  fontFamily: 'Philosopher', fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(134, 0, 155, 202),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      'FootBall Manager',
                                      style: TextStyle(
                                          fontFamily: 'Philosopher',
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(AppRoutes.DESC_SHOPAPP);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(134, 0, 155, 202),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      'Shop App',
                                      style: TextStyle(
                                          fontFamily: 'Philosopher',
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          });
  }
}
