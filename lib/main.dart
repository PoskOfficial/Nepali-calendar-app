import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepali_calendar/ui/main_screen/screens/main_screen.dart';

void main() {
  runApp(const CalendarApp());
}

class CalendarApp extends ConsumerWidget {
  const CalendarApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      routes: {
        MainScreen.mainScreenRoute: (context) => const MainScreen(),
      },
      initialRoute: MainScreen.mainScreenRoute,
    );
  }
}
