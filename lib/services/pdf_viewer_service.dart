import 'package:url_launcher/url_launcher.dart';

class PdfService {
  static Future<void> openPdfInGoogleDocs(String pdfUrl) async {
    final String googleDocsUrl =
        'https://docs.google.com/gview?embedded=true&url=$pdfUrl';

    final Uri uri = Uri.parse(googleDocsUrl);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch PDF');
    }
  }
}
