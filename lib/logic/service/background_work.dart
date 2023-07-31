import 'package:nepali_calendar/logic/service/local_notification.dart';
import 'package:workmanager/workmanager.dart';

void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) {
    // Call your method to show the notification here
    // This method will be called in the background
    LocalNotificationService.display();
    return Future.value(true);
  });
}
