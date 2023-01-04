import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:my_site_portfolio/main.dart';

class InitialDrawerItem extends StatelessWidget {
  const InitialDrawerItem({super.key});

  @override
  Widget build(BuildContext context) {
    var locale = Localizations.localeOf(context);
    return Drawer(
      backgroundColor: Colors.black54,
      child: Column(
        children: [
          SizedBox(height: 30),
          AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'Bem vindo Usuário!',
              style: TextStyle(
                fontFamily: 'Philosopher',
                fontWeight: FontWeight.w700,
                fontSize: MediaQuery.of(context).size.height * .025,
              ),
            ),
            automaticallyImplyLeading: false,
          ),
          const SizedBox(height: 30),
          //Settings
          /*  Text(
            'settings'.i18n(),
            style: TextStyle(
                  fontFamily: 'Philosopher',
                  fontSize: MediaQuery.of(context).size.height * .025,
                ),
          ),

          const Divider(
            height: 20,
            thickness: 5,
            indent: 40,
            endIndent: 40,
            color: Colors.red,
          ),
          Container(
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
                  fontSize: MediaQuery.of(context).size.height * .025,
                ),
              ),
            ),
          ), */
          //LOGIN
          Text(
            'Sign_in_with_an_account'.i18n(),
            style: TextStyle(
              fontFamily: 'Philosopher',
              fontSize: MediaQuery.of(context).size.height * .025,
            ),
          ),
          const Divider(
            height: 20,
            thickness: 5,
            indent: 40,
            endIndent: 40,
            color: Colors.red,
          ),
          ElevatedButton(onPressed: () {}, child: Text('login'.i18n())),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: (){}, child: Text('singup'.i18n())),
          const Divider(
            height: 20,
            thickness: 5,
            indent: 40,
            endIndent: 40,
            color: Colors.red,
          ),
        ],
        
      ),
    );
  }
}
