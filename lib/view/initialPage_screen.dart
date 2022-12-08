import 'package:flutter/material.dart';
import 'package:my_site_portfolio/components/InitialPage_screenItem.dart';
import 'package:localization/localization.dart';
class InitialPageScreen extends StatelessWidget {
  const InitialPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        centerTitle: true,
        title: Text('bridge_to_entry'.i18n()),
      ),
      body: InitialPageScreenItem(),
    );
  }
}
