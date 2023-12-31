import 'package:flutter/material.dart';

import '../../commons/colors.dart';
import 'drawer_card_widget.dart';

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
            Image.asset(
              'assets/logo.png',
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(
              height: 20,
            ),
            //Navigation Cards below
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
