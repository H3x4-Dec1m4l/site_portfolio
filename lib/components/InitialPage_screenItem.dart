import 'package:flutter/material.dart';
import 'package:my_site_portfolio/main.dart';
import 'package:my_site_portfolio/utils/routes.dart';
import 'package:video_player/video_player.dart';
import 'package:localization/localization.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        centerTitle: true,
        title: Text('bridge_to_entry'.i18n()),
      ),
      body: Container(
        child: Stack(
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
              left: 800,
              child: Container(
                child: ElevatedButton(
                  onPressed: () {
                    final myApp =
                        context.findAncestorStateOfType<MyHomePageState>()!;
                    myApp.changeLocale(locale == const Locale('pt', 'BR')
                        ? const Locale('en', 'US')
                        : const Locale('pt', 'BR'));
                  },
                  child: Text('change_language'.i18n(),
                  style: const TextStyle(
                    fontFamily: 'Permanent Marker',
                    fontSize: 20
                  ),
                  ),
                ),
              ),
            ),
            //Card Apresentando o meu Site
            Positioned(
              height: 300,
              width: 400,
              bottom: 100,
              right: 700,
              child: Container(
                child: Card(
                  elevation: 9,
                  color: const Color.fromARGB(31, 11, 50, 224),
                  child: Text(
                    'cardApresentation'.i18n(),
                    style: const TextStyle(
                      fontSize: 25,
                      fontFamily: 'Courgette',
                    ),
                  ),
                ),
              ),
            ),
            //Botões de navegação do site
            Positioned(
              height: 300,
              width: 400,
              bottom: 100,
              right: 400,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRoutes.HOME_PAGE);
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
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRoutes.PORTFOLIO_PAGE);
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
              height: 100,
              bottom: 25,
              left: 600,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.PORTFOLIO_PAGE);
                },
                child: Image.asset('assets/images/images_buttons/github.png'),
              ),
            ),

            Positioned(
              height: 100,
              bottom: 25,
              left: 850,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.PORTFOLIO_PAGE);
                },
                child: Image.asset('assets/images/images_buttons/linkedin.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
