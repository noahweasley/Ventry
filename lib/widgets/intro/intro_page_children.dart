import 'package:flutter/material.dart';
import 'package:ventry/widgets/intro/page_widget.dart';

class IntroScreenPageUtils {
  static List<Widget> getIntroPageChildren() {
    const List<Widget> introPageWidgetList = <Widget>[
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
    return introPageWidgetList;
  }
}
