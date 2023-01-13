import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ventry/app_initialization.dart';
import 'package:ventry/blocs/theme_bloc/theme_bloc.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';
  final String title;

  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: unused_field
  late Future<void> _appInitialize;

  @override
  void initState() {
    super.initState();
    _appInitialize = AppInitialization.initialize();
  }

  @override
  Widget build(BuildContext context) {
    ThemeBloc themeBloc = context.read<ThemeBloc>();

    return BlocBuilder<ThemeBloc, ThemeData>(
      builder: ((context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: themeBloc.isDarkThemeEnabled ?? false ? const Color(0xFFec5387) : Colors.pinkAccent,
              ),
              title: Center(
                child: Text(widget.title),
              ),
            ),
            body: Center(
              child: Switch(
                value: themeBloc.isDarkThemeEnabled ?? false,
                onChanged: (isChecked) {
                  if (isChecked) {
                    themeBloc.add(const DarkThemeEvent());
                  } else {
                    themeBloc.add(const LightThemeEvent());
                  }
                },
              ),
            ),
          ),
          theme: state,
        );
      }),
    );
  }
}
