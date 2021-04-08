import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterista_web/utils/custom_style.dart';
import 'package:flutterista_web/screens/partials/landing_partial.dart';
import 'package:flutterista_web/utils/responsive_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [CustomColors.white1, CustomColors.white2])),
        child: ResponsiveWidget.isLargeScreen(context)
            ? _largeScreen(context)
            : ResponsiveWidget.isMediumScreen(context)
                ? _mediumScreen(context)
                : _smallScreen(context));
  }

  Widget _smallScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(child: LandingBody()),
      appBar: AppBar(
        backgroundColor: CustomColors.white1,
        elevation: 0.0,
        iconTheme: IconThemeData(color: CustomColors.purple2),
      ),
      endDrawer: _buildDrawer(context),
    );
  }

  Widget _mediumScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[_buildNavBar(context), LandingBody()],
        ),
      ),
    );
  }

  Widget _largeScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[_buildNavBar(context), LandingBody()],
        ),
      ),
    );
  }

  List<Widget> _buildMenuLinks(BuildContext context) {
    List<String> links = ["About", "Agenda", "Speakers", "Sponsors"];

    return links.map((link) {
      return Padding(
        padding: EdgeInsets.all(25),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Text(link, style: CustomStyle.menu_links),
        ),
      );
    }).toList();
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: _buildMenuLinks(context)),
        ),
      ),
    );
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
              children: _buildMenuLinks(context)),
        ],
      ),
    );
  }
}
