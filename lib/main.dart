import 'package:flutter/material.dart';
import 'package:flutterista_web/screens/landing_page.dart';

void main() => runApp(
      MyApp(), // Wrap your app
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutterista Conf',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: LandingPage(),
    );
  }
}
