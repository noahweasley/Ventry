import 'package:flutter/material.dart';

class PageWidget extends StatelessWidget {
  final String text;

  const PageWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const FlutterLogo(
            size: 300.0,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  text,
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
