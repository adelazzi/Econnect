import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../constant.dart';
import 'Forst_page.dart';


class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return AnimatedSplashScreen(
        duration: 3000,
        splashIconSize: size.width,
        splash: Image.asset("assets/logo.png",fit: BoxFit.fill),
        nextScreen: Firstly(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.theme,
        backgroundColor: background
    );


}}
