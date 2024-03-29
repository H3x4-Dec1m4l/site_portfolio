import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:my_site_portfolio/components/cards_video_portfolio.dart';
import 'package:my_site_portfolio/utils/media_archives.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my_portfolio'.i18n()),
        backgroundColor: Colors.black26,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageAssets.backgroundPortfolioPage),
                fit: BoxFit.cover),
          ),
          child: Column(
            children:  <Widget>[
              CardVideoPortfolio(),
            ],
          ),
        ),
      ),
    );
  }
}
