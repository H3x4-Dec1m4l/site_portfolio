import 'package:flutter/material.dart';
import 'package:my_site_portfolio/main.dart';
import 'package:my_site_portfolio/utils/linksExternos.dart';
import 'package:my_site_portfolio/utils/routes.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
import 'package:localization/localization.dart';
import 'package:multi_responsive/models/screen_resolution_model.dart';

class InitialPageScreenItem extends StatefulWidget {
  const InitialPageScreenItem({super.key});

  @override
  State<InitialPageScreenItem> createState() => _InitialPageScreenItemState();
}

class _InitialPageScreenItemState extends State<InitialPageScreenItem> {
  VideoPlayerController? _initialPageScreen;

  @override
  void initState() {
    super.initState();
    _initialPageScreen =
        VideoPlayerController.asset('assets/video/initialPage_screen(2).mp4')
          ..initialize().then((value) {
            _initialPageScreen!.setVolume(0);
            _initialPageScreen!.play();
            _initialPageScreen!.setLooping(true);
            setState(() {});
          });
  }

  @override
  void dispose() {
    super.dispose();
    _initialPageScreen!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var locale = Localizations.localeOf(context);
    return SizedBox(
      // height: MediaQuery.of(context).size.height * 1,
      // width: MediaQuery.of(context).size.width * 1,
      child: LayoutBuilder(builder: (_, constraints) {
        var resolution = PlatformScreen(
            width: constraints.maxWidth, height: constraints.maxHeight);
        return Stack(
          children: [
            //Video de fundo
            SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  height: _initialPageScreen?.value.size.height ?? 0,
                  width: _initialPageScreen?.value.size.width ?? 0,
                  child: VideoPlayer(_initialPageScreen!),
                ),
              ),
            ),
            //Botão troca de linguagem
            Positioned(
              height: resolution.ISdesktop()
                  ? 0
                  : resolution.ISmobile()
                      ? constraints.maxHeight * .08
                      : 0,
              // width: 50,
              top: 25,
              left: resolution.ISdesktop()
                  ? 1000
                  : resolution.ISmobile()
                      ? constraints.maxWidth * .25 /* 160 */
                      : 20,
              child: Container(
                child: ElevatedButton(
                  onPressed: () {
                    final myApp =
                        context.findAncestorStateOfType<MyHomePageState>()!;
                    myApp.changeLocale(locale == const Locale('pt', 'BR')
                        ? const Locale('en', 'US')
                        : const Locale('pt', 'BR'));
                  },
                  child: Text(
                    'change_language'.i18n(),
                    style: TextStyle(
                        fontFamily: 'Permanent Marker',
                        fontSize: resolution.ISdesktop()
                            ? 20
                            : resolution.ISmobile()
                                ? 16
                                : 0),
                  ),
                ),
              ),
            ),
            //Card Apresentando o meu Site
            Positioned(
              // height: constraints.maxHeight * .50,
              // width: constraints.maxWidth * .35,
              bottom: resolution.ISdesktop()
                  ? 200
                  : resolution.ISmobile()
                      ? constraints.maxHeight * .27
                      : 0,
              right: resolution.ISdesktop()
                  ? 800
                  : resolution.ISmobile()
                      ? constraints.maxWidth * .08 /* 110 */
                      : 0,
              child: Container(
                height: resolution.ISdesktop()
                    ? constraints.maxHeight * .45
                    : resolution.ISmobile()
                        ? constraints.maxHeight * .45 /* 350 */
                        : 0,
                width: resolution.ISdesktop()
                    ? constraints.maxWidth * .30
                    : resolution.ISmobile()
                        ? constraints.maxWidth * .90 /* 280 */
                        : 0,
                child: Card(
                  elevation: 9,
                  color: const Color.fromARGB(31, 11, 50, 224),
                  child: SingleChildScrollView(
                    child: Text(
                      'cardApresentation'.i18n(),
                      style: TextStyle(
                          fontSize: resolution.ISdesktop()
                              ? 26
                              : resolution.ISmobile()
                                  ? 22
                                  : 0,
                          fontFamily: 'Philosopher',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ),

            //Botões de navegação do site
            Positioned(
              /* height: resolution.ISdesktop()? 300 : resolution.ISmobile() ? 60 : 0, */
              width: resolution.ISdesktop()
                  ? 400
                  : resolution.ISmobile()
                      ? constraints.maxHeight * .35 /* 200 */
                      : 0,
              bottom: resolution.ISdesktop()
                  ? 400
                  : resolution.ISmobile()
                      ? constraints.maxHeight * .0001 /* 60 */
                      : 0,
              right: resolution.ISdesktop()
                  ? 500
                  : resolution.ISmobile()
                      ? 50
                      : 0,
              child: Column(
                children: [
                  //botão me conhecer melhor
                  ElevatedButton(
                    onPressed: () {
                      /* Navigator.of(context).pushNamed(AppRoutes.HOME_PAGE); */
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 3, 97, 121))),
                    child: Text(
                      'get_to_know_me_better'.i18n(),
                      style: const TextStyle(
                        fontFamily: 'Permanent Marker',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  //botão portfólio
                  ElevatedButton(
                    onPressed: () {
                      /* Navigator.of(context).pushNamed(AppRoutes.PORTFOLIO_PAGE); */
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 3, 97, 121))),
                    child: Text(
                      'see_my_works'.i18n(),
                      style: const TextStyle(
                        fontFamily: 'Permanent Marker',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Botão GitHub
            Positioned(
              height: resolution.ISdesktop()
                  ? 100
                  : resolution.ISmobile()
                      ? constraints.maxHeight * .15
                      : 0,
              bottom: resolution.ISdesktop()
                  ? 25
                  : resolution.ISmobile()
                      ? constraints.maxHeight *.70
                      : 0,
              left: resolution.ISdesktop()
                  ? 300
                  : resolution.ISmobile()
                      ? constraints.maxWidth *.01
                      : 0,
              child: InkWell(
                onTap: () {
                  /* final Uri _url = Uri.parse(LinksExternos.linkGitHub);
                  launchUrl(_url); */
                },
                child: Image.asset('assets/images/images_buttons/github.png'),
              ),
            ),
            //BOTÃO LINKEDIN
            Positioned(
              height: resolution.ISdesktop()
                  ? 100
                  : resolution.ISmobile()
                      ? constraints.maxHeight * .15
                      : 0,
              bottom: resolution.ISdesktop()
                  ? 25
                  : resolution.ISmobile()
                      ?  constraints.maxHeight *.70

                      : 0,
              left: resolution.ISdesktop()
                  ? 850
                  : resolution.ISmobile()
                      ?  constraints.maxWidth *.60
 
                      : 0,
              child: InkWell(
                onTap: () {
                 /* final Uri _url = Uri.parse(LinksExternos.linkLinkedin);
                  launchUrl(_url); */
                },
                child: Image.asset('assets/images/images_buttons/linkedin.png'),
              ),
            ),
          ],
        );
      }),
    );
  }
}
