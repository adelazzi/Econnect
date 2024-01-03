import 'package:flutter/material.dart';
import 'package:econnect/utils/app_style.dart';

import 'screens/Root/Home_page.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:LightTheme,
      darkTheme: DarkTheme,
      home: Home(),
    );
  }
}
