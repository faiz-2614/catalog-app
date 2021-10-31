import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.grey,
      cardColor: Colors.white,
      canvasColor: CreameColor,
      accentColor: Colors.grey.shade900,
      buttonColor: Vx.black,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        textTheme: Theme.of(context).textTheme,
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkCreame,
      accentColor: Colors.white,
      buttonColor: Vx.gray400,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        textTheme: Theme.of(context).textTheme,
      ));

  //Colors

  static Color CreameColor = Color(0xfff5f5f5);
  static Color darkblueColor = Color(0xff403b58);
  static Color darkCreame = Vx.gray900;
  static Color lightblueColor = Vx.lightBlue300;
}
