// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';



class listevent extends StatelessWidget {

  var title,iconn,color;

  listevent(
      this.title,
      this.iconn,
      this.color
      );
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
       
      },
      child: Container(
        height: 35,
        margin: EdgeInsets.only(right: 5,left: 5),
        padding: EdgeInsets.only(right: 8,left: 8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Row(
          children: [
            Text(title,textAlign: TextAlign.end,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,)),
            Container(margin: EdgeInsets.all(5),padding: EdgeInsets.all(3),child: Image.asset(iconn,fit: BoxFit.contain,))
          ],
        ),
      ),
    );
  }
}
