import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:nepali_utils/nepali_utils.dart';

class LocalNotificationService {
  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static void initialize() {
    const InitializationSettings initializationSettingsAndroid =
        InitializationSettings(
            android: AndroidInitializationSettings('@mipmap/ic_launcher'));
    _notificationsPlugin.initialize(
      initializationSettingsAndroid,
      onDidReceiveNotificationResponse: (details) {
        if (details.input != null) {}
      },
    );
  }

  static Future<void> display() async {
    // To display the notification in device
    try {
      final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      NotificationDetails notificationDetails = const NotificationDetails(
        android: AndroidNotificationDetails("Channel Id", "Main Channel",
            groupKey: "gfg",
            color: Colors.green,
            importance: Importance.max,
            // sound: RawResourceAndroidNotificationSound("gfg"),
            playSound: true,
            priority: Priority.high),
      );
      await _notificationsPlugin.show(
        id,
        '${NepaliDateTime.now().day.toString()} ${NepaliDateTime.now().month}',
        'message.notification?.body',
        notificationDetails,
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
