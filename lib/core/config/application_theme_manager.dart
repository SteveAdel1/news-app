import 'package:flutter/material.dart';

class ApplicationThemeManager{

  static const Color primaryColor = Color(0xFF39A552);
  static ThemeData applicationThemeManager =ThemeData(
    appBarTheme:const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 35
      ),
       elevation: 0,
      centerTitle: true,
      backgroundColor: primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(35),
        bottomRight: Radius.circular(35))
      ),
    ),
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
      textTheme:const TextTheme(
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),
        bodyLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
        bodyMedium: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.normal,
            color: Colors.white
        ),
        bodySmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Colors.white
        )

  )
  );

}