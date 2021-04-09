import 'package:flutter/material.dart';

class IntroImage extends StatelessWidget {
  const IntroImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String backgroundImage = "assets/img/logo_flutterista.png";
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Image.asset(backgroundImage),
    );
  }
}
