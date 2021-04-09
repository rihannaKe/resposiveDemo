import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterista_web/utils/custom_style.dart';
import 'package:flutterista_web/widgets/menu_links.dart';
import 'package:flutterista_web/utils/responsive_widget.dart';
import 'package:flutterista_web/widgets/subscribe.dart';
import 'package:flutterista_web/widgets/social.dart';
import 'package:flutterista_web/widgets/intro_text.dart';
import 'package:flutterista_web/widgets/intro_image.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: _LargeScreen(),
      mediumScreen: _MediumScreen(),
      smallScreen: _SmallScreen(),
    );
  }
}

Widget _buildNavBar(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [MenuLinks()]),
      ],
    ),
  );
}

Widget _buildDrawer(BuildContext context) {
  return Drawer(
    child: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [MenuLinks()]),
      ),
    ),
  );
}

class _LargeScreen extends StatelessWidget {
  const _LargeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomStyle.bkg_decoration,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _buildNavBar(context),
              FractionallySizedBox(
                widthFactor: 0.8,
                child: Column(
                  children: [
                    Row(children: [
                      Expanded(flex: 2, child: IntroText()),
                      Expanded(child: IntroImage()),
                    ]),
                    SizedBox(height: 10),
                    FractionallySizedBox(
                        widthFactor: 0.6, child: SubscribeWidget()),
                    SizedBox(height: 40),
                    SocialLinks(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MediumScreen extends StatelessWidget {
  const _MediumScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomStyle.bkg_decoration,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _buildNavBar(context),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    Row(children: [
                      Expanded(child: IntroText()),
                      Expanded(child: IntroImage()),
                    ]),
                    SizedBox(height: 10),
                    FractionallySizedBox(
                        widthFactor: 0.8, child: SubscribeWidget()),
                    SizedBox(height: 40),
                    SocialLinks(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _SmallScreen extends StatelessWidget {
  const _SmallScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              IntroText(),
              Center(child: Container(child: IntroImage())),
              SizedBox(height: 10),
              SubscribeWidget(),
              SizedBox(height: 40),
              SocialLinks(),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: CustomColors.white1,
        elevation: 0.0,
        iconTheme: IconThemeData(color: CustomColors.purple2),
      ),
      endDrawer: _buildDrawer(context),
    );
  }
}
