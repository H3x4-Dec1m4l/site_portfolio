import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:url_launcher/url_launcher.dart';

class ShoAppDescription extends StatelessWidget {
  // const name({super.key});
String cod3r = 'course_info'.i18n(); 
  
  @override
  Widget build(BuildContext context) {
    log(cod3r);
    return SizedBox(
      child: LayoutBuilder(builder: (_, constraints) {
        return Container(
          height: 1800,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/view_pages/backgroundtop.png'),
                fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              const SizedBox(height: 20),
              //course_info
              Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height * .30,
                  width: constraints.maxWidth * .35,
                  child: Card(
                    color: Colors.black12,
                    child: RichText(
                      text: TextSpan(
                        text: '',
                        style: DefaultTextStyle.of(context).style,
                        children: [
                          TextSpan(
                            text: 'course_info'.i18n(),
                          ),
                          TextSpan(
                            text: cod3r,
                            recognizer: TapGestureRecognizer()..onTap =() {
                              
                            }
                          ),
                          TextSpan(text: 'aprovadoapp.com', style: TextStyle(color: Colors.blue), recognizer:  TapGestureRecognizer()..onTap = (){
                              Uri _url = Uri.parse('https://aprovadoapp.com');
                      launchUrl(_url);
                          })
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              //Link da cod3r
              Positioned(
                height: constraints.maxWidth * .2,
                width: 60,
                left: constraints.maxWidth * .35,
                // bottom: constraints.maxWidth * .10,
                child: Container(
                  height: 300,
                  width: 60,
                  child: Column(
                    children: [
                      Text('Cod3r Link'),
                      InkWell(
                        onTap: (() {
                          Uri _url = Uri.parse('');
                          launchUrl(_url);
                        }),
                        child: Image.asset(
                            'assets/images/images_buttons/cod3rButton.png'),
                      ),
                    ],
                  ),
                ),
              ),
              
            ],
          ),
        );
      }),
    );
  }
}
