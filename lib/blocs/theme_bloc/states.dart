import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeState extends Equatable {
  static final baseTheme = ThemeData();
  const ThemeState();

  @override
  List<ThemeData?> get props => [darkTheme, lightTheme];

  static final lightTheme = baseTheme.copyWith(
    textTheme: GoogleFonts.latoTextTheme(baseTheme.textTheme),
    primaryColor: Colors.pinkAccent,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light().copyWith(
      primary: Colors.pinkAccent,
    ),
  );

  static final darkTheme = baseTheme.copyWith(
    textTheme: GoogleFonts.latoTextTheme(baseTheme.textTheme),
    primaryColor: const Color(0xFFec5387),
    scaffoldBackgroundColor: const Color(0xFF1A1A1A),
    colorScheme: const ColorScheme.light().copyWith(
      primary: const Color(0xFFec5387),
    ),
  );
}
