import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constant.dart';

class intri_1 extends StatelessWidget {
  const intri_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 10,left: 10,top: 80),
          child: Column(

            children: [
              Container( child: SvgPicture.asset("assets/p2.svg"),),
              Container( child: Text(
                "Welcome to Econnect",
                style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Text_Title),
                textAlign: TextAlign.center,
              ),),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                "Embark on a journey to safeguard our planet. Join our community of changemakers",
                textAlign: TextAlign.center,
                style: TextStyle(color: Text_nor,fontSize: 14),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}


class intri_2 extends StatelessWidget {
  const intri_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 10,left: 10,top: 80),
          child: Column(
            children: [
              Container( child: SvgPicture.asset("assets/p3.svg"),),
              Container( child: Text(
                "Explore Meaningful Volunteering",
                style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Text_Title),
                textAlign: TextAlign.center,
              ),),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Make a difference by participating in various events that address environmental challenges. Your actions matter!",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Text_nor,fontSize: 14),
                ),)
            ],
          ),
        ),
      ),
    );
  }
}


class intri_3 extends StatelessWidget {
  const intri_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 15,left: 15,top: 80),
          child: Column(
            children: [
              Container( child: SvgPicture.asset("assets/p4.svg"),),
              Container( child: Text(
                "Support Sustainable Initiatives",
                style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Text_Title),
                textAlign: TextAlign.center,
              ),),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Donate to support projects dedicated to saving our planet. Together, we can create a greener and better world for all.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Text_nor,fontSize: 14),
                ),)
            ],
          ),
        ),
      ),
    );
  }
}