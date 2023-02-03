import 'package:flutter/material.dart';
import 'package:ventry/widgets/intro/page_widget.dart';

extension IntroPageViewExtension on BuildContext {
  /// get list children
  List<Widget> getIntroPageChildren() {
    return const <Widget>[
      Center(
        child: IntroPageViewWidget(
          headerTitleText: 'Page 1',
        ),
      ),
      Center(
        child: IntroPageViewWidget(
          headerTitleText: 'Page 2',
        ),
      ),
      Center(
        child: IntroPageViewWidget(
          headerTitleText: 'Page 3',
        ),
      ),
      Center(
        child: IntroPageViewWidget(
          headerTitleText: 'Page 4',
        ),
      )
    ];
  }
}
