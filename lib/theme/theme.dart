import 'package:facebook_flutter_ver2/config/constants.dart';
import 'package:flutter/material.dart';

  ThemeData buildThemeData() {
    return ThemeData(
        fontFamily: "Muli",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Palette.scaffold,
        inputDecorationTheme: inputDecorationTheme());
  }

  InputDecorationTheme inputDecorationTheme() {
    var outlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        gapPadding: 10,
        borderSide: BorderSide(color: kTextColor));
    return InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      border: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      enabledBorder: outlineInputBorder,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 42,
        vertical: 15,
      ),
      labelStyle: TextStyle(color: kTextColor),
    );
  }

