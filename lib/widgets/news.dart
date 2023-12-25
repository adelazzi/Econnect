import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class news extends StatelessWidget {
  const news({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10,top: 10,bottom: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 4,
            color: Colors.grey,)
        ],
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/neww.png",),)
      ),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black38,
                Colors.transparent,
              ]
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("More detais",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white),),
            Icon(Icons.navigate_next,color: Colors.white,),
          ],
        ),
      ),
    );
  }
}

class neww extends StatelessWidget {
  const neww({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10,top: 10,bottom: 10),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 1),
              blurRadius: 4,
              color: Colors.grey,)
          ],
          borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Container(child: Image.asset("assets/neww.png"),),
          Container(child: SvgPicture.asset("assets/neww.svg"),)
        ],
      ),
    );
  }
}
