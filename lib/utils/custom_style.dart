import 'package:flutter/material.dart';

class CustomColors {
  static const Color white1 = Color(0xFFF8FBFF);
  static const Color white2 = Color(0xFFFCFDFD);

  static const Color blue1 = Color(0xFF00b0ff);
  static const Color blue2 = Color(0xFF0081cb);
  static const Color blue3 = Color(0xFF4fc3f7);

  static const Color blue4 = Color(0xFF8591B0);

  static const Color purple1 = Color(0xFF9c59d1);
  static const Color purple2 = Color(0xFF390099);
  static const Color purple3 = Color(0xFF1A0938);

  static const Color linkedin = Color(0xFF0a66c2);
  static const Color twitter = Color(0xFF1da1f2);
  static const Color youtube = Color(0xFFff0000);
  static const Color github = Color(0xFF171A21);
  static const Color facebook = Color(0xFF0a66c2);
  static const Color slack = Color(0xFF4a154b);
}

class CustomStyle {
  static const the_font_family = 'Dancing script';

  static const menu_links = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    fontFamily: 'Dancing script',
  );

  static const main_title = TextStyle(
    fontFamily: the_font_family,
    fontWeight: FontWeight.bold,
    fontSize: 200,
    color: CustomColors.purple2,
  );

  static const main_subtitle = TextStyle(
    fontFamily: the_font_family,
    fontSize: 60,
    color: CustomColors.purple1,
  );

  static const main_sub_subtitle = TextStyle(
    fontSize: 30,
    fontFamily: the_font_family,
    fontWeight: FontWeight.bold,
    color: Colors.purple,
  );
}
