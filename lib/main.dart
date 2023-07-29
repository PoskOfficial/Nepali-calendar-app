import 'package:flutter/material.dart';

import 'package:nepali_calendar/ui/main_screen/screens/main_screen.dart';
import 'package:nepali_calendar/ui/providers/calendar_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const CalendarApp());
}

class CalendarApp extends StatelessWidget {
  const CalendarApp({super.key});

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
