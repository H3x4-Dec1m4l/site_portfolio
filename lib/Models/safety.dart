import 'dart:developer';
import '../data/list_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_site_portfolio/utils/routes.dart';
import 'dart:io';
import 'package:crypto/crypto.dart';
import 'dart:convert';
import 'dart:math' as mt;
import 'dart:async';

class Safety {
  unicorn(BuildContext context) {
    return Navigator.of(context).pushNamed(AppRoutes.HOME_PAGE);
  }

  int count = 0;
  countUnicorn(BuildContext context) {
    count++;

    if (count == 6) {
      return unicorn(context);
    }else if(count == 5){
      return RandomHashs.getRandomWord();
    }
  }
}

class RandomHashs {
  
  // static String getRandomWord() {
  //   List<String> file = LIST_SAFETY;
  //   var lines = file.readAsLinesSync();
  //   final random = mt.Random();
  //   final linerandom = random.nextInt(lines.length);
  //   final randomLine = lines[linerandom];
  //   var bytes = utf8.encode(randomLine);
  //     var hash = md5.convert(bytes);
  //   // print(randomLine);
  //   // log(randomLine);
  //   // log(hash.toString());
  //   return hash.toString();

    
  // }

  static String getRandomWord() {
    final random = mt.Random();
    final randomIndex = random.nextInt(LIST_SAFETY.length);
    final randomWord = LIST_SAFETY[randomIndex];
    var bytes = utf8.encode(randomWord);
    var hash = md5.convert(bytes);
    log(randomWord.toString());
    log(randomIndex.toString());
    log(hash.toString());
  //   // log(hash.toString());
    return hash.toString();
  }

  // String generateHash(/* String word */) {
    
  //    String word = getRandomWord();
  //   //  String currentHash;
  //   // String currentRoute;
  //     var bytes = utf8.encode(word);
  //     var hash = md5.convert(bytes);
  //     (word);
  //     log(hash.toString());
  //   // Timer.periodic(Duration(minutes: 1), (timer) {
  //   //     String newWord = getRandomWord();
  //   //     currentHash = generateHash(newWord);
  //   //     currentRoute = 'unicorn/$currentHash';
  //   // });
  //   return hash.toString();
  // }
  
  
}
