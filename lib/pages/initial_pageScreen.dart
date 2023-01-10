import 'package:flutter/material.dart';
import 'package:my_site_portfolio/components/InitialPage_screenItem.dart';
import 'package:localization/localization.dart';
import 'package:my_site_portfolio/components/initialDrawer.dart';
import 'package:my_site_portfolio/utils/media_archives.dart';
import 'package:video_player/video_player.dart';
import '../Models/responsive_widget.dart';
import '../utils/routes.dart';

class InitialPageScreen extends StatefulWidget {
  const InitialPageScreen({super.key});

  @override
  State<InitialPageScreen> createState() => _InitialPageScreenState();
}

class _InitialPageScreenState extends State<InitialPageScreen> {
  VideoPlayerController? _initialPageScreen;

  List _isHovering = [false, false, false, false];
  @override
  // void initState() {
  //   super.initState();
  //   _initialPageScreen =
  //       VideoPlayerController.network(NetworkVideos.videoBackGround_initialpage)
  //         ..initialize().then((value) {
  //           _initialPageScreen!.setVolume(0);
  //           _initialPageScreen!.play();
  //           _initialPageScreen!.setLooping(true);
  //           setState(() {});
  //         });

  //   _isHovering;
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _initialPageScreen!.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ResponsiveWidget.isSmallScreen(context)
        ? Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Container(
                color: Colors.black12,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'bridge_to_entry'.i18n(),
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            drawer: const InitialDrawerItem(),
            
            body: Stack(
              children: [
                SizedBox.expand(
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      // height: _initialPageScreen?.value.size.height ?? 0,
                      // width: _initialPageScreen?.value.size.width ?? 0,
                      child: Image.asset(ImageAssets.backgroundInitialPage),
                    ),
                  ),
                ),
                InitialPageScreenItem()
              ],
            ),
          )
        : Scaffold(
            appBar: PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: Container(
                color: Color.fromARGB(255, 12, 22, 36),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      //BOTÕES DE NAVEGAÇÃO
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onHover: (value) {
                              setState(() {
                                _isHovering[0] = value;
                              });
                            },
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(AppRoutes.HOME_PAGE);
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'get_to_know_me_better'.i18n(),
                                  style: TextStyle(
                                      color: _isHovering[0]
                                          ? Colors.red
                                          : Colors.white,
                                      fontWeight: _isHovering[1]
                                          ? FontWeight.w700
                                          : FontWeight.w700,
                                      fontFamily:
                                          _isHovering[0] ? 'Philosopher' : '',
                                      fontSize: _isHovering[0] ? 18 : 14),
                                ),
                                const SizedBox(height: 5),
                                Visibility(
                                  maintainAnimation: true,
                                  maintainState: true,
                                  maintainSize: true,
                                  visible: _isHovering[0],
                                  child: Container(
                                    height: 2,
                                    width: 50,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: screenSize.width / 20),
                          InkWell(
                            onHover: (value) {
                              setState(() {
                                _isHovering[1] = value;
                              });
                            },
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(AppRoutes.PORTFOLIO_PAGE);
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'see_my_works'.i18n(),
                                  style: TextStyle(
                                      color: _isHovering[1]
                                          ? Colors.red
                                          : Colors.white,
                                      fontWeight: _isHovering[1]
                                          ? FontWeight.w700
                                          : FontWeight.normal,
                                      fontFamily:
                                          _isHovering[1] ? 'Philosopher' : '',
                                      fontSize: _isHovering[1] ? 18 : 14),
                                ),
                                SizedBox(height: 5),
                                Visibility(
                                  maintainAnimation: true,
                                  maintainState: true,
                                  maintainSize: true,
                                  visible: _isHovering[1],
                                  child: Container(
                                    height: 2,
                                    width: 50,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: screenSize.width / 20),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'bridge_to_entry'.i18n(),
                              style: TextStyle(fontSize: 30),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: screenSize.width / 50),
                      //registrar
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            _isHovering[2] = value;
                          });
                        },
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'singup'.i18n(),
                              style: TextStyle(
                                  color: _isHovering[2]
                                      ? Colors.red
                                      : Colors.white,
                                  fontWeight: _isHovering[2]
                                      ? FontWeight.w700
                                      : FontWeight.normal,
                                  fontFamily:
                                      _isHovering[2] ? 'Philosopher' : '',
                                  fontSize: _isHovering[2] ? 18 : 14),
                            ),
                            SizedBox(height: 5),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[2],
                              child: Container(
                                height: 2,
                                width: 50,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: screenSize.width / 50),
                      //Entrar
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            _isHovering[3] = value;
                          });
                        },
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'login'.i18n(),
                              style: TextStyle(
                                  color: _isHovering[3]
                                      ? Colors.red
                                      : Colors.white,
                                  fontWeight: _isHovering[3]
                                      ? FontWeight.w700
                                      : FontWeight.normal,
                                  fontFamily:
                                      _isHovering[3] ? 'Philosopher' : '',
                                  fontSize: _isHovering[3] ? 18 : 14),
                            ),
                            SizedBox(height: 5),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[3],
                              child: Container(
                                height: 2,
                                width: 50,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: Stack(
              children: [
                SizedBox.expand(
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      // height: _initialPageScreen?.value.size.height ?? 0,
                      // width: _initialPageScreen?.value.size.width ?? 0,
                      child:Image.asset(ImageAssets.backgroundInitialPage),
                    ),
                  ),
                ),
                InitialPageScreenItem()
              ],
            ),
          );
  }
}
