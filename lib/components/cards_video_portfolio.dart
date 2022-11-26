import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../utils/routes.dart';
import 'package:localization/localization.dart';

class CardVideoPortfolio extends StatefulWidget {
  const CardVideoPortfolio({super.key});

  @override
  State<CardVideoPortfolio> createState() => _CardVideoPortfolioState();
}

class _CardVideoPortfolioState extends State<CardVideoPortfolio> {
  VideoPlayerController? _videoPlayerControllerOne;
  VideoPlayerController? _videoPlayerControllerTwo;

  @override
  void initState() {
    super.initState();
    _videoPlayerControllerOne =
        VideoPlayerController.asset('assets/video/portfolio1.mp4')
          ..initialize().then((context) {
            _videoPlayerControllerOne!.setVolume(0);
            _videoPlayerControllerOne?.play();
            _videoPlayerControllerOne?.setLooping(true);
            setState(() {});
          });
    _videoPlayerControllerTwo =
        VideoPlayerController.asset('assets/video/portfolio2.mp4')
          ..initialize().then((context) {
            _videoPlayerControllerTwo!.setVolume(0);
            _videoPlayerControllerTwo!.play();
            _videoPlayerControllerTwo!.setLooping(true);
            setState(() {});
          });
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerControllerOne!.dispose();
    _videoPlayerControllerTwo!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.black12,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 1800,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  //Video portfolio Fooatball_Manager
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 300,
                        width: 500,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              child: SizedBox.expand(
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: SizedBox(
                                    height: _videoPlayerControllerOne
                                            ?.value.size.height ??
                                        0,
                                    width: _videoPlayerControllerOne
                                            ?.value.size.width ??
                                        0,
                                    child:
                                        VideoPlayer(_videoPlayerControllerOne!),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Video portfolio Shop
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(AppRoutes.HOME_PAGE);
                        },
                        child: Container(
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
                                        height: _videoPlayerControllerTwo
                                                ?.value.size.height ??
                                            0,
                                        width: _videoPlayerControllerTwo
                                                ?.value.size.width ??
                                            0,
                                        child: VideoPlayer(
                                            _videoPlayerControllerTwo!),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  // SizedBox(height: 200,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            // height: 300,
                            width: 400,
                            child: Card(
                              color: Colors.black12,
                              child: Text(
                                'desc_video_1'.i18n(),
                                style: const TextStyle(
                                  fontFamily: 'Philosopher',
                                   fontSize: 16
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            // height: 300,
                            width: 400,
                            child: Card(
                              color: Colors.black12,
                              child: Text(
                                'desc_video_2'.i18n(),
                                style: const TextStyle(
                                    fontFamily: 'Philosopher',
                                    fontSize: 16
                                  ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
