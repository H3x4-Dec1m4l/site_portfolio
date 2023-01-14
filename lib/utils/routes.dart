// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// import 'package:localization/localization.dart';
// import 'dart:developer';

import '../Models/safety.dart';
// import 'dart:io';
// import 'package:crypto/crypto.dart';
// import 'dart:convert';
// import 'dart:math';
// import 'dart:async';
// final routeHash = RandomHashs.getRandomWord();
final unicornHash = AppRoutesHash.instance();
class AppRoutes {
  
  static const INIT_HOME_PAGE = '/';
  static const HOME_PAGE = '/home-page';
  static const PORTFOLIO_PAGE = '/portfolio-page';
  static const DESC_SHOPAPP = '/desc-shopApp';
  static const SKILLS_PAGE = '/my-skills';
  static String UNICORN_PAGE = '/unicorn/${unicornHash.UNICORN_HASH}';
  // static const FORWARDING_PAGE = '/forwarding_page/';

}

class AppRoutesHash{
   final String UNICORN_HASH;

  AppRoutesHash(): UNICORN_HASH = RandomHashs.getRandomWord();

  factory AppRoutesHash.instance() => AppRoutesHash();
}
