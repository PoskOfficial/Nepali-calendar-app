import 'package:flutter/material.dart';
import 'package:nepali_calendar/logic/service/local_notification.dart';

import 'package:nepali_calendar/ui/main_screen/screens/main_screen.dart';
import 'package:nepali_calendar/ui/providers/calendar_provider.dart';
import 'package:provider/provider.dart';
import 'package:workmanager/workmanager.dart';
import 'package:home_widget/home_widget.dart';
import 'logic/service/background_work.dart';

Future<void> backgroundCallback(Uri? uri)async{
  if (uri!.host == 'updateCounter') {
    int counter = 0;
    await  HomeWidget.getWidgetData('_counter', defaultValue: 0).then((value) {
      counter = value!;
      counter++;
    });
    await HomeWidget.saveWidgetData("_counter", counter);
    await HomeWidget.updateWidget(name: 'HomeScreenWidgetProvider');
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Workmanager().initialize(callbackDispatcher);
  HomeWidget.registerBackgroundCallback(backgroundCallback);
  runApp(const CalendarApp());
}

class CalendarApp extends StatefulWidget {
  const CalendarApp({super.key});

  @override
  State<CalendarApp> createState() => _CalendarAppState();
}

class _CalendarAppState extends State<CalendarApp> {
  @override
  void initState() {
    super.initState();
    LocalNotificationService.initialize();
    LocalNotificationService.display();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CalendarProvider(),
        ),
      ],
      child: MaterialApp(
        routes: {
          MainScreen.mainScreenRoute: (context) => const MainScreen(),
        },
        initialRoute: MainScreen.mainScreenRoute,
      ),
    );
  }
}
