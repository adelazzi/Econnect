import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  // colors
  static Color primaryColor = const Color(0xFF3FAC9C);
  static Color titleColor = const Color(0xFF254E48);
  static Color textColor = const Color(0xFF545454);
  static Color disabledColor = const Color(0xFF989898);
  static Color background = const Color.fromARGB (255, 251, 251, 251);
  static Color Botton_actif = const Color.fromARGB (255, 63, 172, 156);
  static Color Botton_next = const Color.fromARGB (255, 63, 172, 156);
  static Color Botton_desactif = const Color.fromARGB (255, 84, 84, 84);
  static Color Botton_Red = const Color.fromARGB (255, 250, 108, 112);
  static Color Text_Title = const Color.fromARGB (255, 20, 86, 87);
  static Color Text_Appbar = const Color.fromARGB (255, 20, 86, 87);
  static Color Text_Type = const Color.fromARGB (255, 63, 172, 156);
  static Color Text_nor = const Color.fromARGB (255, 84, 84, 84);
  static Color botton = const Color.fromARGB (255, 216, 218, 220);
  
  //Text Styles
  static TextStyle headLine1 = GoogleFonts.inter(
    fontSize: 32,
    fontWeight: FontWeight.w800,
    color: titleColor,
  );

  static TextStyle headLineSmall = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: titleColor,
  );

  static TextStyle headLineMedium = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: primaryColor,
  );
}








ThemeData LightTheme = ThemeData(
  brightness: Brightness.light,
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
  
);


ThemeData DarkTheme = ThemeData(
  brightness: Brightness.light,
);
