import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ventry/blocs/home_screen_bloc/bloc.dart';
import 'package:ventry/blocs/theme_bloc/theme_bloc.dart';
import 'package:ventry/widgets/intro_screen.dart';

class IntroPage extends StatefulWidget {
  static const String routeName = '/intro';
  final String title;

  const IntroPage({super.key, required this.title});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();
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
            body: BlocProvider(
              create: ((context) => IntroScreenBloc()),
              child: IntroScreen(themeBloc: themeBloc),
            ),
          ),
          theme: state,
        );
      }),
    );
  }
}
