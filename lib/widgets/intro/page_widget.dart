import 'package:flutter/material.dart';

class IntroPageViewWidget extends StatelessWidget {
  final String headerTitleText;

  const IntroPageViewWidget({super.key, required this.headerTitleText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const FlutterLogo(
            size: 200.0,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  headerTitleText,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
