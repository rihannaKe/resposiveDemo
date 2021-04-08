import 'package:url_launcher/url_launcher.dart';

class UrlUtils {
  UrlUtils._();

  static void open(String url, {String name}) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static void sendEmail(String address,
      {String name, String subject = '', String body = ''}) async {
    String urlStr = 'mailto:$address?subject=$subject&body=$body';
    if (await canLaunch(urlStr)) {
      await launch(urlStr);
    } else {
      throw 'Could not launch $urlStr';
    }
  }
}
