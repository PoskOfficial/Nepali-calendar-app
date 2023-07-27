import 'package:flutter/material.dart';
import 'package:nepali_calendar/ui/commons/colors.dart';
import 'package:nepali_calendar/ui/main_screen/components/calendar_component.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static String mainScreenRoute = 'main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainScreenDrawer(),
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

class MainScreenDrawer extends StatelessWidget {
  const MainScreenDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            // Logo Here
            Image.asset('assets/logo.png', fit: BoxFit.fitWidth,),
            const SizedBox(
              height: 20,
            ),
            DrawerCardWidget(
              text: 'Home',
              backgroundColor: kOuterCalendarBorder,
            ),
            DrawerCardWidget(
              text: 'Events',
            ),
            DrawerCardWidget(
              text: 'Date Converter',
            ),
            DrawerCardWidget(
              text: 'About',
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerCardWidget extends StatelessWidget {
  const DrawerCardWidget({
    super.key,
    this.onTap,
    required this.text,
    this.backgroundColor,
  });
  final String text;
  final VoidCallback? onTap;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: backgroundColor ?? kCalendarBorderColor,
        child: ListTile(
          title: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
