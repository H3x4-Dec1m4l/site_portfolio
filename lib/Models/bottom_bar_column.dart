// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:my_site_portfolio/utils/linksExternos.dart';

class BottomBarColumn extends StatelessWidget {
  final String? heading;
  final String? s1;
  final String? s2;
  final String? s3;
  final String r1;
  final String r2;
  final String r3;

  BottomBarColumn({
    Key? key,
    this.heading,
    this.s1,
    this.s2,
    this.s3,
    required this.r1,
    required this.r2,
    required this.r3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            heading!,
            style: TextStyle(
              color: Colors.blueGrey[300],
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
                text: s1,
                style: TextStyle(
                    color: Colors.blueGrey[100],
                    fontSize: 14,
                    decoration: TextDecoration.underline),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Uri _url = Uri.parse(r1);
                    launchUrl(_url);
                  }),
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
                text: s2,
                style: TextStyle(
                  color: Colors.blueGrey[100],
                   decoration: TextDecoration.underline,
                  fontSize: 14,
                  
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Uri _url = Uri.parse(r2);
                    launchUrl(_url);
                  }),
          ),
          SizedBox(height: 5),
           RichText(
            text: TextSpan(
                text: s3,
                style: TextStyle(
                  color: Colors.blueGrey[100],
                  decoration: TextDecoration.underline,
                  fontSize: 14,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Uri _url = Uri.parse(r3);
                    launchUrl(_url);
                  }),
          ),
        ],
      ),
    );
  }
}
