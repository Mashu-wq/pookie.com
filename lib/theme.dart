import 'package:commercial/constants.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      useMaterial3: true,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: appBarTheme(),
      inputDecorationTheme: inputDecorationTheme());
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    //floatingLabelBehavior: FloatingLabelBehavior.always,
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
  );
}
