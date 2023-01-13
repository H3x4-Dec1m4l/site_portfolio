// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:my_site_portfolio/utils/media_archives.dart';
import 'package:url_launcher/url_launcher.dart';

class ForwardingRoutesWidgets extends StatelessWidget {
  const ForwardingRoutesWidgets({
    Key? key,
    required this.text,
    this.icon = ImageAssets.icon_route,
     this.route,
     this.link,
    this.fontFamily,
    this.textSize,
    this.height = 28,
    this.width = 28,
    this.color,
  }) : super(key: key);

  final String text;
  final String icon;
  final String? route;
  final String? link;
  final String? fontFamily;
  final double? textSize;
  final double height;
  final double width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * .45,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.5, 1],
          colors: [
            Color(0xFF491D0B),
            Color(0xFF9D4623),
          ],
        ),
      ),
      child: SizedBox.expand(
        child: TextButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontFamily: fontFamily,
                  color: color,
                  fontSize: textSize,
                ),
              ),
              SizedBox(
                child: Image.asset(icon),
                height: height,
                width: width,
              ),
            ],
          ),
          onPressed: () {
           Uri _url =  link == null ? Uri.parse('') : Uri.parse(link!) ;
           route == null ? launchUrl(_url) : Navigator.of(context).pushNamed(route!) ;
          },
        ),
      ),
    );
  }
}
