/////////start
// ignore_for_file: must_be_immutable

import'package:flutter/material.dart';

import '../constant.dart';
import '../screens/Root/blog_detail.dart';


class Blog extends StatelessWidget {


  var title,desq,namecomp,phcomp,star,mark;

 Blog(this.title,this.desq,this.namecomp,this.phcomp,this.star,this.mark);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(
            builder: (context) {
              return bolod_detail();
            }), );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 8,bottom: 8,right: 6,left: 6),
        child: Container(
          decoration: BoxDecoration(

            color: background,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 4,
                color: Colors.grey,
              ),
            ]
          ),
          padding:EdgeInsets.only(top: 10,bottom: 10,right: 10,left: 10),
          width: MediaQuery.sizeOf(context).width,
          child: Column(children: [
            Container(child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [

                  Text(title, style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Text_Title),),
                  Container(child: Image.asset(mark)),

                ],),

                Icon(Icons.bookmark_border,color: Botton_actif,size: 30,)
              ],
            ),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: Text(desq,style: TextStyle(color: Text_nor,fontSize: 14),),),
            ),
            Container(child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Container(padding: EdgeInsets.only(right: 10),child: Image.asset(phcomp),),
                  Text(namecomp,style: TextStyle(color: Text_Title,fontSize: 14),),

                ],),
                Container(child: Image.asset(star),),
              ],
            ),),
          ],),
        ),
      ),
    );
  }

}
