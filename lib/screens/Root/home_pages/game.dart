import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';
import '../notready.dart';

class game_screen extends StatelessWidget {
  const game_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child:Stack(
        children: [
          Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  child: Column(
                  children : [
                    Container(child: SvgPicture.asset("assets/let.svg")),
                    Container(padding: EdgeInsets.only(right: 15,left: 15),child: Text("Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut ",textAlign: TextAlign.center,style: TextStyle(color: Text_nor),),)
                  ],
              ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) {
                          return Notready();
                        }), );
                  },
                  child: Container(decoration: BoxDecoration(
                        boxShadow: [
                        BoxShadow(
                        offset: Offset(0, 1),
                        blurRadius: 6,
                        color: Text_Type,
                        ),
                        ],
                      color: Botton_next,borderRadius: BorderRadius.circular(40)),
                  child: Icon(Icons.play_arrow_rounded,color: Colors.white,size: 60,),
                  ),
                )

              ]
            ),

          ],
        ),
        DraggableScrollableSheet(

          initialChildSize: 0.2,
          maxChildSize: 0.8,
          minChildSize: 0.2,
          builder: (BuildContext,ScrollController scrollController){
            return Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 1),
                      blurRadius: 4,
                      color: Colors.grey,
                    ),
                  ],
                color: background,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8)
                )
              ),
              child: Scrollbar(
                child: ListView(
                  controller: scrollController,
                  children: [
                    Container(margin: EdgeInsets.only(top: 10, bottom: 30),child: SvgPicture.asset("assets/scroll.svg")),
                    Container(margin: EdgeInsets.only(top: 10, bottom: 30),child: SvgPicture.asset("assets/gamers.svg")),
                    Container(child: SvgPicture.asset("assets/gamerss.svg")),

                  ],
                ),
              ),
            );
          },

        )
        ]
      ),
    );
  }
}
