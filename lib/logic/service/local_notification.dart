import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:nepali_calendar/ui/commons/colors.dart';
import 'package:nepali_utils/nepali_utils.dart';

class LocalNotificationService {
  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static void initialize() {
    InitializationSettings initializationSettingsAndroid =
        const InitializationSettings(
            android: AndroidInitializationSettings('ic_launcher'));
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
      NotificationDetails notificationDetails = NotificationDetails(
        android: AndroidNotificationDetails(
          "Channel Id",
          "Main Channel",
          largeIcon: const DrawableResourceAndroidBitmap('drawable/ic_launcher'),
          category: AndroidNotificationCategory.status,
          groupKey: "gfg",
          autoCancel: false,
          playSound: false,
          onlyAlertOnce: true,
          ongoing: true,
          icon: 'drawable/ic_launcher',
          color: kBackgroundColor,
          importance: Importance.max,
          priority: Priority.high,
        ),
      );
      await _notificationsPlugin.show(
        id,
        '${NepaliDateTime.now().day.toString()} ${NepaliDateFormat.MMMM().format(
          NepaliDateTime.now(),
        )}, ${NepaliDateTime.now().year}',
        'Opn Miti To See List of Events',
        notificationDetails,
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
