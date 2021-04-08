import 'package:flutter/material.dart';
import 'package:flutterista_web/utils/custom_text.dart';
import 'package:flutterista_web/utils/custom_style.dart';

class IntroText extends StatelessWidget {
  const IntroText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(AppText.title, style: CustomStyle.main_title),
        ),
        SizedBox(height: 10),
        FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(AppText.subtitle, style: CustomStyle.main_subtitle),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
