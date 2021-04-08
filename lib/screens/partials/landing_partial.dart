import 'package:flutter/material.dart';
import 'package:flutterista_web/utils/responsive_widget.dart';
import 'package:flutterista_web/widgets/subscribe.dart';
import 'package:flutterista_web/widgets/social.dart';
import 'package:flutterista_web/widgets/intro_text.dart';
import 'package:flutterista_web/widgets/intro_image.dart';

class LandingBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: _LargeScreen(),
      mediumScreen: _MediumScreen(),
      smallScreen: _SmallScreen(),
    );
  }
}

class _LargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.8,
      child: Column(
        children: [
          Row(children: [
            Expanded(flex: 2, child: IntroText()),
            Expanded(child: IntroImage()),
          ]),
          SizedBox(height: 10),
          FractionallySizedBox(widthFactor: 0.6, child: SubscribeWidget()),
          SizedBox(height: 40),
          SocialLinks(),
        ],
      ),
    );
  }
}

class _MediumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: Column(
        children: [
          Row(children: [
            Expanded(child: IntroText()),
            Expanded(child: IntroImage()),
          ]),
          SizedBox(height: 10),
          SubscribeWidget(),
          SizedBox(height: 40),
          SocialLinks(),
        ],
      ),
    );
  }
}

class _SmallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      child: Column(
        children: <Widget>[
          IntroText(),
          Center(child: Container(child: IntroImage())),
          SizedBox(height: 30),
          SubscribeWidget(),
          SocialLinks(),
        ],
      ),
    );
  }
}
