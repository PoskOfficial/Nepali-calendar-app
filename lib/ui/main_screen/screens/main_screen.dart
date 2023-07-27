import 'package:flutter/material.dart';
import 'package:nepali_calendar/ui/commons/colors.dart';
import 'package:nepali_calendar/ui/main_screen/components/calendar_component.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static String mainScreenRoute = 'main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CalendarComponent(),
          ],
        ),
      ),
    );
  }
}
