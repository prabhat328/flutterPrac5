import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as html;
import 'package:flutter_prac5/models/notification.dart';

class NotificationService {
  static Future<List<EventNotification>> fetchNotifications() async {
    final url = 'https://mca.spit.ac.in/index.php/notifications/';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var document = html.parse(response.body);

        var elements = document.querySelectorAll('.site-main p a');

        List<EventNotification> notifications = elements.map((element) {
          final title = element.text.trim();
          final link = element.attributes['href'] ?? '';
          return EventNotification(title: title, url: link);
        }).toList();

        return notifications;
      } else {
        throw Exception('Failed to load notifications');
      }
    } catch (e) {
      print('Error fetching notifications: $e');
      return [];
    }
  }
}
