// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class topage extends StatelessWidget {

  var icon,title;
  topage(String icon, String title);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(icon),
          Text(title,style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 20, 86, 87),),),
      ],),
    );
  }
}
