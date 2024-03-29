import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:my_site_portfolio/pages/ShopApp_Description_Scren.dart';
import 'package:my_site_portfolio/pages/forwarding_pageScreen.dart';
// import 'package:my_site_portfolio/pages/forwarding_pageScreen.dart';
import 'package:my_site_portfolio/pages/initial_pageScreen.dart';
import 'package:my_site_portfolio/pages/page_unicorn/auth_corn_page.dart';
import 'package:my_site_portfolio/pages/portfolio_pageScreen.dart';
import 'package:my_site_portfolio/pages/skills_page.dart';
import './utils/routes.dart';
import 'pages/home_pageScreen.dart';
import 'package:localization/localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(  MyHomePage());
}

class MyHomePage extends StatefulWidget {
   MyHomePage({Key? key, this.theme}) : super(key: key);

  final ThemeData? theme;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
 final routesHash = AppRoutesHash.instance();
  Locale? _locale;
  changeLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    LocalJsonLocalization.delegate.directories = [
      'assets/lang/titles',
      'assets/lang/texts'
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      locale: _locale,
      localeResolutionCallback: (locale, supportedLocales) {
        if (supportedLocales.contains(locale)) {
          return locale;
        }

        if (locale?.languageCode == 'en') {
          return const Locale('en', 'US');
        }
        return const Locale('pt', 'BR');
      },
      supportedLocales: const [
        Locale('pt', 'BR'),
        Locale('en', 'US'),
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        LocalJsonLocalization.delegate,
      ],
      title: 'Dev_Reis' /* futuro titulo = Trypol-y*/,
      theme: ThemeData.dark(),
      routes: {
        AppRoutes.INIT_HOME_PAGE: (ctx) => const InitialPageScreen(),
        AppRoutes.HOME_PAGE: (ctx) => const HomePage(), //tentar mais tarde colocar um drawer e colocar o botão de mudarlinguagem aqui
        AppRoutes.PORTFOLIO_PAGE: (ctx) => const PortfolioPage(),
        AppRoutes.DESC_SHOPAPP: (ctx) => const DescriptionShopAppPage(),
        AppRoutes.SKILLS_PAGE: (ctx) => const SkillsPage(),
        AppRoutes.UNICORN_PAGE: (ctx) =>  AuthCornPage(),
        // AppRoutes.FORWARDING_PAGE: (ctx) => const ForwardingPageScreen(),
      },
    );
  }
}
