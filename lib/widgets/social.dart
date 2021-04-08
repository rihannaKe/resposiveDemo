import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutterista_web/utils/url_utils.dart';
import 'package:flutterista_web/utils/custom_style.dart';
import 'package:flutterista_web/utils/custom_text.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(AppText.follow_us, style: CustomStyle.main_sub_subtitle),
        FittedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon:
                    Icon(FontAwesomeIcons.twitter, color: CustomColors.twitter),
                onPressed: () {
                  UrlUtils.open(AppText.social_links['twitter']);
                },
              ),
              IconButton(
                icon:
                    Icon(FontAwesomeIcons.youtube, color: CustomColors.youtube),
                onPressed: () {
                  UrlUtils.open(AppText.social_links['youtube']);
                },
              ),
              IconButton(
                icon: Icon(FontAwesomeIcons.linkedin,
                    color: CustomColors.linkedin),
                onPressed: () {
                  UrlUtils.open(AppText.social_links['linkedin']);
                },
              ),
              IconButton(
                icon: Icon(FontAwesomeIcons.github, color: CustomColors.github),
                onPressed: () {
                  UrlUtils.open(AppText.social_links['github']);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
