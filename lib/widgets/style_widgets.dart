// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextBorder extends StatelessWidget {
  const TextBorder({
    Key? key,
    this.fontFamily,
    required this.text,
    required this.sizeText,
    required this.colorText,
    required this.blurRadius,
    required this.dx,
    required this.dy,
    required this.colorBorder,
  }) : super(key: key);
  final String text;
  final String? fontFamily;
  final double sizeText;
  final Color colorText;
  final Color colorBorder;
  final double blurRadius;
  final double dx;
  final double dy;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: TextStyle(
            fontFamily: fontFamily,
            fontSize: sizeText,
            color: colorText,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontFamily: fontFamily,
            fontSize: sizeText,
            shadows: [
              Shadow(
                blurRadius: blurRadius,
                color: colorBorder,
                offset: Offset(dx, dy),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TextSpanBorder extends StatelessWidget {
  const TextSpanBorder({
    Key? key,
    required this.textSpan,
    required this.sizeTextSpan,
    required this.colorTextSpan,
    required this.colorBorder,
    required this.blurRadius,
    required this.dx,
    required this.dy,
  }) : super(key: key);
  final String textSpan;
  final double sizeTextSpan;
  final Color colorTextSpan;
  final Color colorBorder;
  final double blurRadius;
  final double dx;
  final double dy;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RichText(
          text: TextSpan(
            text: textSpan,
            style: TextStyle(
              fontSize: sizeTextSpan,
              color: colorTextSpan,
            ),
          ),
        ),
        RichText(
          text: TextSpan(
            text: textSpan,
            style:
                TextStyle(fontSize: sizeTextSpan, color: colorBorder, shadows: [
              Shadow(
                blurRadius: blurRadius,
                color: colorBorder,
                offset: Offset(dx, dy),
              )
            ]),
          ),
        ),
      ],
    );
    ;
  }
}
