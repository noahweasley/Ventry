import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ventry/blocs/home_screen_bloc/bloc.dart';
import 'package:ventry/blocs/home_screen_bloc/events.dart';
import 'package:ventry/blocs/theme_bloc/theme_bloc.dart';

class IntroScreen extends StatefulWidget {
  final ThemeBloc themeBloc;

  const IntroScreen({super.key, required this.themeBloc});

  @override
  State<IntroScreen> createState() => IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  // widget.themeBloc.isDarkThemeEnabled ?? false
  final PageController _pageController = PageController();

  final List<Widget> _introPageWidgetList = const <Widget>[
    Center(
      child: PageWidget(text: 'Page 1'),
    ),
    Center(
      child: PageWidget(text: 'Page 2'),
    ),
    Center(
      child: PageWidget(text: 'Page 3'),
    ),
    Center(
      child: PageWidget(text: 'Page 4'),
    )
  ];

  @override
  Widget build(BuildContext context) {
   
   return const Center();
   //  final bloc = context.read<IntroScreenBloc>();

   //  return LayoutBuilder(
   //    builder: ((boxWidth, boxHeight) {
   //      return Column(
   //        mainAxisAlignment: MainAxisAlignment.center,
   //        children: <Widget>[
   //          PageView(
   //            controller: _pageController,
   //            physics: const BouncingScrollPhysics(),
   //            scrollDirection: Axis.horizontal,
   //            onPageChanged: _onPageChanged,
   //            children: _introPageWidgetList,
   //          ),
   //          Stack(
   //            children: <Widget>[
   //              BlocBuilder<IntroScreenBloc, int>(
   //                builder: (context, currentPageState) {
   //                  final int totalNumOfPages = _introPageWidgetList.length;

   //                  return Positioned(
   //                    right: 16.0,
   //                    bottom: 16.0,
   //                    child: ElevatedButton(
   //                      onPressed: (() {
   //                        bloc.add(SwitchPageEvent(numOfPages: totalNumOfPages));
   //                      }),
   //                      child: Padding(
   //                        padding: const EdgeInsets.symmetric(
   //                          vertical: 8.0,
   //                          horizontal: 24.0,
   //                        ),
   //                        child: Text((currentPageState != totalNumOfPages) ? 'Next' : 'Finish'),
   //                      ),
   //                    ),
   //                  );
   //                },
   //              ),
   //            ],
   //          )
   //        ],
   //      );
   //    }),
   //  );
  }

  void _onPageChanged(int pagePosition) {}
}

class PageWidget extends StatelessWidget {
  final String text;

  const PageWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
