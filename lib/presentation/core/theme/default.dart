import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Colors.blue;
const darkColor = Color(0xff24272c);

const secondaryColor = Color(0xFF2A2D3E);
const bgColor = Color(0xFF212332);

final defaultTheme = ThemeData(
  fontFamily: 'PTSans',
  brightness: Brightness.light,
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.blue,
  canvasColor: primaryColor,
  colorScheme: const ColorScheme.light().copyWith(
    primary: primaryColor,
    secondary: primaryColor,
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    toolbarHeight: 60,
    backgroundColor: Colors.blue, //Color(0xFF21BFBD),
    foregroundColor: primaryColor,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontFamily: 'LibreBaskerville',
      fontStyle: FontStyle.normal,
      fontSize: 16,
    ),
  ),
  textTheme: GoogleFonts.ralewayTextTheme().apply(bodyColor: Colors.white),
  buttonTheme: const ButtonThemeData(
    buttonColor: primaryColor,
    disabledColor: primaryColor,
    textTheme: ButtonTextTheme.primary,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(15),
      textStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontFamily: 'LibreBaskerville',
        fontStyle: FontStyle.normal,
        fontSize: 14,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xffe6e6e6),
    contentPadding: const EdgeInsets.all(15),
    hintStyle: const TextStyle(
      color: Color(0xff24272c),
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 16,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);
