import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:my_site_portfolio/components/skills_item.dart';
import 'package:my_site_portfolio/utils/media_archives.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my_skills'.i18n()),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageAssets.backgroundShopDesc),
          ),
        ),
        child: const SkillsItem(),
      ),
    );
  }
}
