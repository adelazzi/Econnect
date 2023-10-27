import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constant.dart';
import 'Home_page.dart';

class sterter extends StatelessWidget {
  const sterter({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        color: background,
        child: Padding(
          padding: const EdgeInsets.only(right: 15,left: 15,top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container( child: SvgPicture.asset("assets/p5.svg"),),
                  Container( child: Text(
                    "Together, We're Stronger!",
                    style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Text_Title),
                    textAlign: TextAlign.center,
                  ),),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "Change is possible when we unite. Join thousands of fellow Econnect worldwide. Together, we amplify our impact and protect our home.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Text_nor,fontSize: 14),
                    ),)
                ],
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(
                      builder: (context) {
                        return Home();
                      }), );
                },
                child: Container(
                  height: 56,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Botton_actif),
                  child: Center(
                    child: Text(
                        "Lets go",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),

                    ),
                  ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
