import 'package:flutter/material.dart';
import 'package:ventry/models/page_data.dart';

class IntroPageViewWidget extends StatelessWidget {
  final PageData page;

  const IntroPageViewWidget({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const FlutterLogo(
              size: 150.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    page.headerTitleText,
                    style: const TextStyle(fontSize: 20.0, height: 1.5),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24.0),
                    child: Text(
                      page.subTitleText,
                      style: const TextStyle(
                        fontSize: 16.0,
                        height: 1.5,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
