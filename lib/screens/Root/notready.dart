//          100 %
import 'package:flutter_svg/flutter_svg.dart';


import 'package:flutter/material.dart';

import '../../constant.dart';


class Notready extends StatelessWidget {
  const Notready({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SvgPicture.asset("assets/notready.svg"),
              Text(" Oopsy! ",style: TextStyle(color: Text_Title,fontSize: 48),),
              Text("This page is not ready yet",style: TextStyle(color: Text_nor,fontSize: 18),)
            ],

          ),
        ),
      ),
    );


  }}