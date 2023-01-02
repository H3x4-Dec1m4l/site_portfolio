// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:localization/localization.dart';
import '../utils/linksExternos.dart';
import 'package:url_launcher/url_launcher.dart';




class TextSearch {
  
   static List<InlineSpan> formatText({
      required String text,
      required String search,
      String? route,
      String textFamily = '',
      String searchFamily = '',
      double textSize = 14,
      double searchSize = 14,
      GestureRecognizer? recognizer,
    }) {
      List<String> parts = text.split(search);

      final List<InlineSpan> formattedText = [];
      for (int i = 0; i != parts.length; i++) {
        final part = parts[i];
        formattedText.add(
          TextSpan(
            style: TextStyle(
                color: Colors.white,
                fontFamily: textFamily,
                fontSize: textSize),
            text: part,
          ),
        );

        if (i < parts.length - 1) {
          formattedText.add(route != null
              ? TextSpan(
                  style: TextStyle(
                      color: Colors.blue,
                      fontFamily: searchFamily,
                      fontSize: searchSize),
                  text: ' $search ',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Uri _url = Uri.parse(route);
                      launchUrl(_url);
                    },
                )
              : TextSpan(
                  style: TextStyle(
                      color: Colors.blue,
                      fontFamily: searchFamily,
                      fontSize: searchSize),
                  text: ' $search ',
                  recognizer: recognizer));
        }
      }

      return formattedText;
    }

}












// class SearchText{
//  static List<InlineSpan> formatText(
//       {required String text, List<String> search = const []}) {
//     // Divide o texto em partes usando os termos de pesquisa como separadores
//     List<String> parts = search.fold(text.split(''), (prev, element) {
//       List<String> parts = prev;
//       for (int i = 0; i < parts.length; i++) {
//         parts[i] = parts[i].split(element).join('');
//       }
//       return parts;
//     });

//     final List<InlineSpan> formattedText = [];
//     for (int i = 0; i < parts.length; i++) {
//       final part = parts[i];
//       formattedText.add(
//         TextSpan(
//           style: TextStyle(color: Colors.white),
//           text: part,

//         ),
//       );

//       // Verifica se o termo de pesquisa está presente na lista de termos de pesquisa
//       final searchIndex = search.indexOf(part);
//       if (searchIndex != -1) {
//         formattedText.add(
//           TextSpan(
//             style: TextStyle(color: Colors.blue),
//             text: ' $part ',
//             recognizer: TapGestureRecognizer()..onTap = (){

//             }
//           ),
//         );

//         search.removeAt(searchIndex);
//       }
//     }

//     return formattedText;
//   }

// }

class SearchTextList extends StatelessWidget {
  const SearchTextList({
    Key? key,
    this.search,
    this.text,
  }) : super(key: key);
  final List<String>? search;
  final String? text;

  List<InlineSpan> formatText(
      {required String text, List<String> search = const []}) {
    // Divide o texto em partes usando os termos de pesquisa como separadores
    List<String> parts = search.fold(text.split(''), (prev, element) {
      List<String> parts = prev;
      for (int i = 0; i < parts.length; i++) {
        parts[i] = parts[i].split(element).join('');
      }
      return parts;
    });

    final List<InlineSpan> formattedText = [];
    for (int i = 0; i < parts.length; i++) {
      final part = parts[i];
      formattedText.add(
        TextSpan(
          style: TextStyle(color: Colors.white),
          text: part,
        ),
      );

      // Verifica se o termo de pesquisa está presente na lista de termos de pesquisa
      final searchIndex = search.indexOf(part);
      if (searchIndex != -1) {
        formattedText.add(
          TextSpan(
              style: TextStyle(color: Colors.blue),
              text: ' $part ',
              recognizer: TapGestureRecognizer()..onTap = () {}),
        );

        // search.removeAt(searchIndex);
      }
    }

    return formattedText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.transparent,
        child: RichText(
            text: TextSpan(
                children: formatText(text: text!, search: search!).toList())),
      ),
    );
  }
}

/* class SearchTextSpan extends InlineSpan {
  const SearchTextSpan({
    Key? key,
    required this.search,
    required this.text,
    required this.route,
  });
  final String search;
  final String text;
  final String route;

  

  @override
  TextSpan ebuild(TextStyle style) {
    List<InlineSpan> formatText({required String text, String search = ''}) {
    List<String> parts = text.split(search);

    final List<InlineSpan> formattedText = [];
    for (int i = 0; i != parts.length; i++) {
      final part = parts[i];
      formattedText.add(
        TextSpan(
          style: TextStyle(color: Colors.white),
          text: part,
        ),
      );

      if (i < parts.length - 1) {
        formattedText.add(
          TextSpan(
            style: TextStyle(color: Colors.blue),
            text: ' $search ',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Uri _url = Uri.parse(route);
                launchUrl(_url);
              },
          ),
        );
      }
    }

    return formattedText;
  }
    return TextSpan(
      style: style,
      children: formatText(text: text, search: search).toList(),
    );
  }

  @override
  void build(ParagraphBuilder builder, {double textScaleFactor = 1.0, List<PlaceholderDimensions>? dimensions}) {
    // TODO: implement build
  }

  @override
  int? codeUnitAt(int index) {
    // TODO: implement codeUnitAt
    throw UnimplementedError();
  }

  @override
  int? codeUnitAtVisitor(int index, Accumulator offset) {
    // TODO: implement codeUnitAtVisitor
    throw UnimplementedError();
  }

  @override
  RenderComparison compareTo(InlineSpan other) {
    // TODO: implement compareTo
    throw UnimplementedError();
  }

  @override
  void computeSemanticsInformation(List<InlineSpanSemanticsInformation> collector) {
    // TODO: implement computeSemanticsInformation
  }

  @override
  void computeToPlainText(StringBuffer buffer, {bool includeSemanticsLabels = true, bool includePlaceholders = true}) {
    // TODO: implement computeToPlainText
  }

  @override
  bool debugAssertIsValid() {
    // TODO: implement debugAssertIsValid
    throw UnimplementedError();
  }

  @override
  List<DiagnosticsNode> debugDescribeChildren() {
    // TODO: implement debugDescribeChildren
    throw UnimplementedError();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    // TODO: implement debugFillProperties
  }

  @override
  List<InlineSpanSemanticsInformation> getSemanticsInformation() {
    // TODO: implement getSemanticsInformation
    throw UnimplementedError();
  }

  @override
  InlineSpan? getSpanForPosition(TextPosition position) {
    // TODO: implement getSpanForPosition
    throw UnimplementedError();
  }

  @override
  InlineSpan? getSpanForPositionVisitor(TextPosition position, Accumulator offset) {
    // TODO: implement getSpanForPositionVisitor
    throw UnimplementedError();
  }

  @override
  // TODO: implement style
  TextStyle? get style => throw UnimplementedError();

  @override
  DiagnosticsNode toDiagnosticsNode({String? name, DiagnosticsTreeStyle? style}) {
    // TODO: implement toDiagnosticsNode
    throw UnimplementedError();
  }

  @override
  String toPlainText({bool includeSemanticsLabels = true, bool includePlaceholders = true}) {
    // TODO: implement toPlainText
    throw UnimplementedError();
  }

  @override
  String toStringDeep({String prefixLineOne = '', String? prefixOtherLines, DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    // TODO: implement toStringDeep
    throw UnimplementedError();
  }

  @override
  String toStringShallow({String joiner = ', ', DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    // TODO: implement toStringShallow
    throw UnimplementedError();
  }

  @override
  String toStringShort() {
    // TODO: implement toStringShort
    throw UnimplementedError();
  }

  @override
  bool visitChildren(InlineSpanVisitor visitor) {
    // TODO: implement visitChildren
    throw UnimplementedError();
  }
}
 */