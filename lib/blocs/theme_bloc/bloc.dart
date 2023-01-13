import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:ventry/blocs/theme_bloc/theme_bloc.dart';

class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeData> {
   bool? isDarkThemeEnabled;
   
  ThemeBloc() : super(ThemeState.darkTheme) {
    on<ThemeEvent>((event, emit) {
      if (event is LightThemeEvent) {
         isDarkThemeEnabled = false;
        emit(ThemeState.lightTheme);
      } else {
         isDarkThemeEnabled = true;
        emit(ThemeState.darkTheme);
      }
    });
  }

  @override
  ThemeData? fromJson(Map<String, dynamic> json) {
    if (json['light'] as bool) {
      return ThemeState.lightTheme;
    } else {
      return ThemeState.darkTheme;
    }
  }

  @override
  Map<String, bool>? toJson(ThemeData state) {
    try {
      return {'light': state != ThemeState.lightTheme};
    } catch (_) {
      return null;
    }
  }
}
