import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeState extends Equatable {
  static final baseTheme = ThemeData(
    appBarTheme: const AppBarTheme(toolbarHeight: 52.0),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 36.0,
        ),
      ),
    ),
  );
  static final latoTextTheme = GoogleFonts.latoTextTheme(baseTheme.textTheme);
  static const defaultTextStyleLight = TextStyle(color: Colors.black);
  static const defaultTextStyleDark = TextStyle(color: Colors.white);

  const ThemeState();

  @override
  List<ThemeData?> get props => [darkTheme, lightTheme];
  static final lightTheme = baseTheme.copyWith(
    textTheme: latoTextTheme.copyWith(
      bodySmall: defaultTextStyleLight,
      bodyMedium: defaultTextStyleLight,
      bodyLarge: defaultTextStyleLight,
      labelSmall: defaultTextStyleLight,
      labelMedium: defaultTextStyleLight,
      labelLarge: defaultTextStyleLight,
      titleSmall: defaultTextStyleLight,
      titleMedium: defaultTextStyleLight,
      titleLarge: defaultTextStyleLight,
      headlineSmall: defaultTextStyleLight,
      headlineMedium: defaultTextStyleLight,
      headlineLarge: defaultTextStyleLight,
      displaySmall: defaultTextStyleLight,
      displayMedium: defaultTextStyleLight,
      displayLarge: defaultTextStyleLight,
    ),
    primaryColor: Colors.pinkAccent,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light().copyWith(
      primary: Colors.pinkAccent,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
      ),
    ),
  );

  static final darkTheme = baseTheme.copyWith(
    textTheme: latoTextTheme.copyWith(
      bodySmall: defaultTextStyleDark,
      bodyMedium: defaultTextStyleDark,
      bodyLarge: defaultTextStyleDark,
      labelSmall: defaultTextStyleDark,
      labelMedium: defaultTextStyleDark,
      labelLarge: defaultTextStyleDark,
      titleSmall: defaultTextStyleDark,
      titleMedium: defaultTextStyleDark,
      titleLarge: defaultTextStyleDark,
      headlineSmall: defaultTextStyleDark,
      headlineMedium: defaultTextStyleDark,
      headlineLarge: defaultTextStyleDark,
      displaySmall: defaultTextStyleDark,
      displayMedium: defaultTextStyleDark,
      displayLarge: defaultTextStyleDark,
    ),
    primaryColor: const Color(0xFFec5387),
    scaffoldBackgroundColor: const Color(0xFF1A1A1A),
    colorScheme: const ColorScheme.light().copyWith(
      primary: const Color(0xFFec5387),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
      ),
    ),
  );
}
