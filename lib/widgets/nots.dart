
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../constant.dart';



class nots extends StatelessWidget {
  

  var title,time,desq,img,type,typee;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(width: 2,color: Colors.grey),
         borderRadius: BorderRadius.circular(10),
         // color: Colors.grey,
        ),
        child: Column(
          children: [
            Container(child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ph , title , type
                Row(
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(child: Image.asset('assets/not.png'),),
                  ),
                  Container(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Container(child: Text("Event Acceptation"),),
                    Container(child: Text("Event",style: TextStyle(color: Text_nor,fontSize: 14),),),
                  ],),),

                ],),
                // time , typee
                Row(
                  children: [
                    Container(padding: EdgeInsets.only(right: 5),child: Icon(Icons.check_circle,color: Colors.green,),),
                    Container(child: Text("9:30 AM"),),
                  ],),
              ],
            ),),
            Container(padding: EdgeInsets.only(top: 8),child: Text("Your Post is Trending in the hot Section Your Post is Trending in the hot SectionYour Post is Trending in the hot Section",style: TextStyle(color: Text_nor,fontSize: 14),),),
          ],
        ),

      ),
    );
  }
}
