import 'package:flutter/material.dart';

class IntroImage extends StatelessWidget {
  const IntroImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String backgroundImage = "assets/img/logo_flutterista.png";
    return Image.asset(backgroundImage);
  }
}
