import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepali_calendar/ui/commons/colors.dart';
import 'package:nepali_calendar/ui/main_screen/components/calendar_component.dart';

import '../components/main_screen_drawer.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  static String mainScreenRoute = 'main';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      drawer: const MainScreenDrawer(),
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        foregroundColor: Colors.white,
        title: Image.asset(
          'assets/logo.png',
          height: 40,
        ),
        centerTitle: true,
      ),
      backgroundColor: kBackgroundColor,
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CalendarComponent(),
        ],
      ),
    );
  }
}
