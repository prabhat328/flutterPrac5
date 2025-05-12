import 'package:flutter/material.dart';
import 'package:flutter_prac5/models/notification.dart';
import 'package:flutter_prac5/services/notification_service.dart';
import 'package:flutter_prac5/services/pdf_viewer_service.dart';
import 'package:flutter_prac5/widgets/notification_card.dart';

class NotificationsSection extends StatefulWidget {
  const NotificationsSection({super.key});

  @override
  _NotificationsSectionState createState() => _NotificationsSectionState();
}

class _NotificationsSectionState extends State<NotificationsSection> {
  late Future<List<EventNotification>> _notificationsFuture;

  @override
  void initState() {
    super.initState();
    _notificationsFuture = NotificationService.fetchNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<EventNotification>>(
      future: _notificationsFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: Text('Failed to load notifications.'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No notifications available.'));
        }

        final notifications = snapshot.data!;

        return ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            final notification = notifications[index];
            return NotificationCard(
              notification: notification,
              onTap: () => PdfService.openPdfInGoogleDocs(notification.url),
            );
          },
        );
      },
    );
  }
}
