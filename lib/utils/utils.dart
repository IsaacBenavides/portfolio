import 'package:url_launcher/url_launcher.dart';

class Utils {
  static Future<void> launchInBrowser(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(
        Uri.parse(url),
      );
    } else {
      throw 'No se pudo iniciar $url';
    }
  }
}
