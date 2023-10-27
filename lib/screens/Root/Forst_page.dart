
import 'package:flutter/material.dart';
import 'package:econnect/screens/Root/starter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constant.dart';
import '../intro_screens/intros.dart';


class Firstly extends StatefulWidget {
  const Firstly({super.key});

  @override
  State<Firstly> createState() => _FirstlyState();
}

class _FirstlyState extends State<Firstly> {

  PageController _controller = PageController();

  bool islast = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            //pages
            PageView(
              controller: _controller,
              onPageChanged: (index){

                setState(() {
                  islast = (index == 2);
                });
              },
              children: [

                intri_1(),
                intri_2(),
                intri_3(),

              ],
            ),
            //indicater
            Container(alignment: Alignment(-0.7,0.9),
                padding: EdgeInsets.only(right: 20,left: 20),
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                      SmoothPageIndicator(
                          controller: _controller,
                          count: 3,
                        effect: JumpingDotEffect(
                          verticalOffset: 20,
                          dotColor: Colors.black12,
                          activeDotColor: Botton_actif,),
                      ),

                islast ?
                InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) {
                          return sterter();
                        }), );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Botton_next,
                        borderRadius: BorderRadius.circular(1000)),
                    height: 64,
                    width: 64,
                    child: Center(
                      child: Icon(
                        Icons.navigate_next,
                        color: Colors.white,),),),
                )

                    :
                GestureDetector(
                    onTap: ()
                    { _controller.nextPage(

                        duration: Duration(microseconds: 300000),
                        curve: Curves.bounceInOut

                    );  },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Botton_next,
                          borderRadius: BorderRadius.circular(1000)),
                      height: 64,
                      width: 64,
                      child: Center(
                        child: Icon(
                          Icons.navigate_next,
                          color: Colors.white,),),))

              ],
            ))
          ]
        ),
        



      ),
    );
  }
}
