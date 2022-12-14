// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, unrelated_type_equality_checks

import 'dart:developer';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

// import 'package:multi_responsive/src/pixel_calculator.dart';

class PlatformScreen {
  bool isMobile;
  bool isTablet;
  bool isLaptop;
  bool isDesktop;
  double? width;
  double? height;

// final Function(Widget context) layoutBuilder;

  PlatformScreen({
    Key? key,
    this.isMobile = false,
    this.isTablet = false,
    this.isLaptop = false,
    this.isDesktop = false,
    this.width,
    this.height,
  }) : super();

  bool ISmobile() {
    if (width! >= 320.00 && width! <= 480) {
      return isMobile = true;
      // Device.ForMobile;
      //  log('O aparelho é um celular \n $width');
    } else if (height! >= 320.00 && height! <= 480) {
      return isMobile = true;

      // log(' modo landcape \n a plataforma é Mobile Width $width');
    } else {
      //  log('o aparelho não é um celular \n Width $width');
    }
    return isMobile = false;
  }

  bool IStablet() {
    if (width! >= 481.00 && width! <= 768.00) {
      return isTablet = true;
      // log('O aparelho é um tablet');
    } else if (height! >= 481.00 && height! <= 768.00) {
      return isTablet = true;
      // log('o aparelho está em modo landscape');
    } else {
      //  log('o aparelho não é um tablet');
    }
    return isTablet = false;
  }

  // bool ISlaptop() {
  //   if (width! >= 769.00 && width! <= 1270.00) {
  //     return isLaptop = true;
  //     // log('O aparelho é um Laptop \n Width $width');
  //   } /* else if (height! >= 769.00 && height! <= 1279.00) {
  //     return isLaptop = true;
  //   } */
  //   else {
  //     // log('o aparelho não é um laptop \n Width $width');
  //   }
  //   return isLaptop = false;
  // }

  bool ISdesktop() {
    if (width! >= 1279) {
      return isDesktop = true;
      // log('O aparelho é um desktop \n Width $width');
    } else if (width! >= 769.00 && width! <= 1270.00) {
      return isLaptop = true;
    } /* else if (height! > 1279) {
      return isDesktop = true;
      // log('o aparelho está em modo landscape \n Width $width');
    } */
    else {
      // log('O aparelho não é um desktop \n Width $width');
    }
    return isDesktop = false;
  }
}

// ignore_for_file: constant_identifier_names