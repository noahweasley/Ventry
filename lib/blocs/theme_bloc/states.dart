import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeState extends Equatable {
  static final _baseTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      toolbarHeight: 52.0,
    ),
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
  static final _latoTextTheme = GoogleFonts.latoTextTheme(_baseTheme.textTheme);
  static const _defaultTextStyleLight = TextStyle(color: Colors.black);
  static const _defaultTextStyleDark = TextStyle(color: Colors.white);

  const ThemeState();

  @override
  List<ThemeData?> get props => [darkTheme, lightTheme];
  static final lightTheme = _baseTheme.copyWith(
    textTheme: _latoTextTheme.copyWith(
      bodySmall: _defaultTextStyleLight,
      bodyMedium: _defaultTextStyleLight,
      bodyLarge: _defaultTextStyleLight,
      labelSmall: _defaultTextStyleLight,
      labelMedium: _defaultTextStyleLight,
      labelLarge: _defaultTextStyleLight,
      titleSmall: _defaultTextStyleLight,
      titleMedium: _defaultTextStyleLight,
      titleLarge: _defaultTextStyleLight,
      headlineSmall: _defaultTextStyleLight,
      headlineMedium: _defaultTextStyleLight,
      headlineLarge: _defaultTextStyleLight,
      displaySmall: _defaultTextStyleLight,
      displayMedium: _defaultTextStyleLight,
      displayLarge: _defaultTextStyleLight,
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

  static final darkTheme = ThemeData.dark().copyWith();
  
  // ignore: unused_field
  static final _darkTheme = darkTheme.copyWith(
    textTheme: _latoTextTheme.copyWith(
      bodySmall: _defaultTextStyleDark,
      bodyMedium: _defaultTextStyleDark,
      bodyLarge: _defaultTextStyleDark,
      labelSmall: _defaultTextStyleDark,
      labelMedium: _defaultTextStyleDark,
      labelLarge: _defaultTextStyleDark,
      titleSmall: _defaultTextStyleDark,
      titleMedium: _defaultTextStyleDark,
      titleLarge: _defaultTextStyleDark,
      headlineSmall: _defaultTextStyleDark,
      headlineMedium: _defaultTextStyleDark,
      headlineLarge: _defaultTextStyleDark,
      displaySmall: _defaultTextStyleDark,
      displayMedium: _defaultTextStyleDark,
      displayLarge: _defaultTextStyleDark,
    ),
    scaffoldBackgroundColor: const Color(0xFF1A1A1A),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
      ),
    ),
  );
}
