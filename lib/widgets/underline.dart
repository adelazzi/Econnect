import 'package:flutter/material.dart';
import 'package:econnect/utils/app_style.dart';

class Underline extends StatelessWidget {
  const Underline({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: (30)),
      height: 2,
      decoration: BoxDecoration(color: Styles.primaryColor),
      width: double.infinity,
    );
  }
}

class Underline_g extends StatelessWidget {
  const Underline_g({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: (30)),
      height: 1,
      decoration: BoxDecoration(color: Colors.grey),
      width: double.infinity,
    );
  }
}
