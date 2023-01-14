import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:my_site_portfolio/Models/responsive_widget.dart';
import 'package:my_site_portfolio/components/skills_item.dart';
import 'package:my_site_portfolio/utils/media_archives.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Scaffold()
        : //PC RESOLUTION
        Scaffold(
            appBar: AppBar(
              title: Text('my_skills'.i18n()),
            ),
            body: SingleChildScrollView(
              child: Container(
                height: 900,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageAssets.backgroundSkillPage),
                      fit: BoxFit.cover),
                ),
                child: const SkillsItem(),
              ),
            ),
          );
  }
}
