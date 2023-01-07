import 'package:flutter/material.dart';
import 'package:my_site_portfolio/Models/responsive_widget.dart';
import 'package:my_site_portfolio/components/forwarding.dart';
import 'package:my_site_portfolio/utils/media_archives.dart';

class ForwardingPageScreen extends StatelessWidget {
  const ForwardingPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageAssets.forwarding),
                    fit: BoxFit.cover),
              ),
              child: const SizedBox(
                child: ForwardingItem(),
              ),
            ),
          )
        : Scaffold();
  }
}
