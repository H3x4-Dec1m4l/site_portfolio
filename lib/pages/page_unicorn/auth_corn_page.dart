import 'package:flutter/material.dart';
import 'package:my_site_portfolio/Models/responsive_widget.dart';

class AuthCornPage extends StatelessWidget {
  const AuthCornPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        //cll Resolution
        ? Scaffold(
            appBar: AppBar(
              title: const Text('Unicónio Page'),
            ),
            body: Container(),
          )
        //PC resolution
        : Scaffold(
            // appBar: AppBar(
            //   title: const Text('Unicónio Page'),
            // ),
            body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/view_pages/ichigo_kurusaki_newBankai.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
  }
}
