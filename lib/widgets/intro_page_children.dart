import 'package:flutter/material.dart';
import 'package:ventry/models/page_data.dart';
import 'package:ventry/widgets/page_widget.dart';

extension IntroPageViewExtension on BuildContext {
  /// get list children
  List<Widget> getIntroPageChildren() {
    return <Widget>[
      Center(
        child: IntroPageViewWidget(
          page: PageData(
            headerTitleText: 'Get updated prices',
            subTitleText: 'Avoid your salesperson selling your goods at the wrong price,'
                ' they get the updated price of things immediately as it is updated',
            image: '',
          ),
        ),
      ),
      Center(
        child: IntroPageViewWidget(
          page: PageData(
            headerTitleText: 'Prices of goods all in one place',
            subTitleText: 'Search and view any available goods in the store. If they are out of stock, you\'ll know!',
            image: '',
          ),
        ),
      ),
      Center(
        child: IntroPageViewWidget(
          page: PageData(
            headerTitleText: 'View both retail and wholesale prices',
            subTitleText: 'Keep track of both price of a single commodity and the prices sold in bulk.'
                ' No need to memorize any thing at all!',
            image: '',
          ),
        ),
      ),
      Center(
        child: IntroPageViewWidget(
          page: PageData(
            headerTitleText: 'More features coming up',
            subTitleText: 'Sales of the day, calculator, know how much people are owing you and lots more.'
                ' Just keep the app updated',
            image: '',
          ),
        ),
      )
    ];
  }
}
