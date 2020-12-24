import 'package:SchulteTableApp/theme/constants.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppConstants.primaryColor,
    textTheme: _textTheme(),
    fontFamily: "Poppins",
    primaryColor: AppConstants.primaryColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppConstants.lightColor,
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
        onPrimary: AppConstants.primaryColor,
      ),
    ),
  );

  static TextTheme _textTheme() {
    return TextTheme(
      bodyText1: TextStyle(
        fontSize: 15,
        color: AppConstants.lightColor,
        fontWeight: FontWeight.normal,
      ),
      bodyText2: TextStyle(
        fontSize: 13,
        color: AppConstants.lightGreyColor,
        fontWeight: FontWeight.normal,
      ),
      caption: TextStyle(
        fontSize: 12,
        color: AppConstants.lightGreyColor,
        fontWeight: FontWeight.normal,
      ),
      headline5: TextStyle(
        fontSize: 23,
        color: AppConstants.lightColor,
        fontWeight: FontWeight.normal,
      ),
      button: TextStyle(
        fontSize: 18,
        color: AppConstants.primaryColor,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
