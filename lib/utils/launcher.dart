import 'package:url_launcher/url_launcher.dart';

class Launcher {
  static Future<void> launchURL({link}) async {
    if (!await launchUrl(Uri.parse(link))) {
      throw Exception('Could not launch $link');
    }
  }

  static Future<void> openMail({link}) async {
    if (!await launchUrl(Uri.parse('mailto:$link'))) {
      throw Exception('Could not launch $link');
    }
  }
}