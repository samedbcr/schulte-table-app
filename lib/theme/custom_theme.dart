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
      headline4: TextStyle(
        fontSize: 30,
        color: AppConstants.lightColor,
        fontWeight: FontWeight.w500,
      ),
      headline5: TextStyle(
        fontSize: 23,
        color: AppConstants.lightColor,
        fontWeight: FontWeight.normal,
      ),
      headline6: TextStyle(
        fontSize: 19,
        color: AppConstants.lightColor,
        fontWeight: FontWeight.w500,
      ),
      button: TextStyle(
        fontSize: 18,
        color: AppConstants.primaryColor,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
