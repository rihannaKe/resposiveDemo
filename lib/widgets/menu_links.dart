import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterista_web/utils/custom_style.dart';

class MenuLinks extends StatefulWidget {
  MenuLinks({Key key}) : super(key: key);

  @override
  _MenuLinksState createState() => _MenuLinksState();
}

class _MenuLinksState extends State<MenuLinks> {
  List<String> links = ["Agenda", "Speakers", "Sponsors"];
  TextStyle style = CustomStyle.menu_links;

  void _mouseEnter(PointerEvent details) {
    setState(() {
      style = CustomStyle.menu_links_hover;
    });
  }

  void _mouseExit(PointerEvent details) {
    setState(() {
      style = CustomStyle.menu_links;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Padding(
        padding: EdgeInsets.all(25),
        child: MouseRegion(
          onEnter: _mouseEnter,
          onExit: _mouseExit,
          cursor: SystemMouseCursors.click,
          child: Text('About', style: style),
        ),
      ),
      Wrap(
          children: links.map((link) {
        return Padding(
          padding: EdgeInsets.all(25),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(link, style: CustomStyle.menu_links),
          ),
        );
      }).toList())
    ]);
  }
}
