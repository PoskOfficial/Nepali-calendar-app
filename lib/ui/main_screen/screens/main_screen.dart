import 'package:flutter/material.dart';

import 'package:nepali_calendar/ui/commons/colors.dart';
import 'package:nepali_calendar/ui/main_screen/components/calendar_component.dart';

import '../components/main_screen_drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static String mainScreenRoute = 'main';

  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            const CalendarComponent(),
            const SizedBox(
              height: 30,
            ),
            Container(
              
            ),
            GestureDetector(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                padding: const EdgeInsets.symmetric(vertical: 13),
                width: double.infinity,
                decoration: BoxDecoration(color: kButtonColor, 
                borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                    child: Text(
                  'See All Events',
                  style: TextStyle(
                    color: kForegroundColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
