import 'package:flutter/material.dart';

const int _smallBreakPoint = 600;
const int _mediumBreakPoint = 1024;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  const ResponsiveWidget(
      {Key key, this.largeScreen, this.mediumScreen, this.smallScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= _mediumBreakPoint) {
        return largeScreen;
      } else if (constraints.maxWidth >= _smallBreakPoint &&
          constraints.maxWidth < _mediumBreakPoint) {
        return mediumScreen ?? largeScreen;
      } else {
        return smallScreen ?? largeScreen;
      }
    });
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= _mediumBreakPoint;
  }

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width <= _smallBreakPoint;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > _smallBreakPoint &&
        MediaQuery.of(context).size.width < _mediumBreakPoint;
  }
}
