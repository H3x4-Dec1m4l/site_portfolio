import 'package:flutter/material.dart';
import 'package:my_site_portfolio/main.dart';
import 'package:my_site_portfolio/utils/routes.dart';
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
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 1,
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
              //  height: 50,
              // width: 50,
              top: 25,
              left: resolution.ISdesktop()
                  ? 1000
                  : resolution.ISmobile()
                      ? 160
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
                    style: const TextStyle(
                        fontFamily: 'Permanent Marker', fontSize: 20),
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
                      ? 200
                      : 0,
              right: resolution.ISdesktop()
                  ? 800
                  : resolution.ISmobile()
                      ? 110
                      : 0,
              child: Container(
                height: resolution.ISdesktop()
                    ? constraints.maxHeight * .45
                    : resolution.ISmobile()
                        ? 350
                        : 0,
                width: resolution.ISdesktop()
                    ? constraints.maxWidth * .30
                    : resolution.ISmobile()
                        ? 280
                        : 0,
                child: Card(
                  elevation: 9,
                  color: const Color.fromARGB(31, 11, 50, 224),
                  child: SingleChildScrollView(
                    child: Text(
                      'cardApresentation'.i18n(),
                      style: TextStyle(
                        fontSize: resolution.ISdesktop() ? 25 : resolution.ISmobile() ? 22 : 0,
                        fontFamily: 'Courgette',
                      ),
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
                      ? 200
                      : 0,
              bottom: resolution.ISdesktop()
                  ? 400
                  : resolution.ISmobile()
                      ? 60
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
                      Navigator.of(context).pushNamed(AppRoutes.HOME_PAGE);
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 3, 97, 121))),
                    child: Text(
                      'get_to_know_me_better'.i18n(),
                      style: const TextStyle(
                        fontFamily: 'Permanent Marker',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  //botão portfólio
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoutes.PORTFOLIO_PAGE);
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
                      ? 70
                      : 0,
              bottom: resolution.ISdesktop()
                  ? 25
                  : resolution.ISmobile()
                      ? 550
                      : 0,
              left: resolution.ISdesktop()
                  ? 300
                  : resolution.ISmobile()
                      ? -1
                      : 0,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.PORTFOLIO_PAGE);
                },
                child: Image.asset('assets/images/images_buttons/github.png'),
              ),
            ),

            Positioned(
              height: resolution.ISdesktop()
                  ? 100
                  : resolution.ISmobile()
                      ? 70
                      : 0,
              bottom: resolution.ISdesktop()
                  ? 25
                  : resolution.ISmobile()
                      ? 555
                      : 0,
              left: resolution.ISdesktop()
                  ? 850
                  : resolution.ISmobile()
                      ? 150
                      : 0,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.PORTFOLIO_PAGE);
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
