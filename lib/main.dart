import 'package:econnect/screens/Root/splash.dart';
import 'package:flutter/material.dart';
import 'package:econnect/utils/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            toolbarHeight: 65,
            elevation: 0.0,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Styles.primaryColor)),
        primaryColor: Styles.titleColor,
        inputDecorationTheme: InputDecorationTheme(
          suffixIconColor: Styles.primaryColor,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Styles.titleColor, width: 2.5),
              borderRadius: BorderRadius.circular(8.0)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Styles.disabledColor, width: 2.0),
              borderRadius: BorderRadius.circular(8.0)),
        ),
      ),
      home: splash(),
    );
  }
}
