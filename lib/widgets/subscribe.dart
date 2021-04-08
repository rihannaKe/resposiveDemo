import 'package:flutter/material.dart';
import 'package:flutterista_web/utils/custom_style.dart';
import 'package:flutterista_web/utils/custom_text.dart';
import 'package:flutterista_web/utils/responsive_widget.dart';

class SubscribeWidget extends StatelessWidget {
  const SubscribeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppText.subscribeText,
            style: TextStyle(
                fontFamily: 'Dancing script',
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
        _EmailBox()
      ],
    );
  }
}

class SubscribeButton extends StatelessWidget {
  String emailImage = "assets/img/email.png";

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [CustomColors.purple2, CustomColors.purple1],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft),
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                  color: CustomColors.purple3.withOpacity(.3),
                  offset: Offset(0, 8),
                  blurRadius: 8.0)
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => _buildPopupDialog(context),
              );
            },
            child: Center(
              child: buildButton(context),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildButton(BuildContext context) {
    if (ResponsiveWidget.isSmallScreen(context))
      return buildSmallButton(context);
    else
      return buildLargeButton(context);
  }

  Widget buildLargeButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FittedBox(
          fit: BoxFit.contain,
          child: Text(
            AppText.subscribeButton,
            style: TextStyle(
                color: CustomColors.white1, fontSize: 14, letterSpacing: 1),
          ),
        ),
      ],
    );
  }

  Widget buildSmallButton(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Image.asset(
        emailImage,
        color: CustomColors.white1,
      ),
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      content: Builder(
        builder: (context) {
          return Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(AppText.suscribeConfirm),
              ],
            ),
          );
        },
      ),
      actions: <Widget>[
        new ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Close'),
        ),
      ],
    );
  }
}

class _EmailBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.0, right: 60, top: 10, bottom: 40),
      child: Container(
        decoration: BoxDecoration(
            color: CustomColors.white1,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, offset: Offset(0, 8), blurRadius: 8)
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 7,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: AppText.email_hint),
                ),
              ),
              Expanded(flex: 3, child: SubscribeButton())
            ],
          ),
        ),
      ),
    );
  }
}
