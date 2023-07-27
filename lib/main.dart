import 'package:flutter/material.dart';
import 'package:nepali_calendar/ui/main_screen/screens/main_screen.dart';

void main() {
  runApp(const CalendarApp());
}

class CalendarApp extends StatelessWidget {
  const CalendarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        MainScreen.mainScreenRoute:(context) => const MainScreen(),
      },
      initialRoute: MainScreen.mainScreenRoute,
    );
  }
}
