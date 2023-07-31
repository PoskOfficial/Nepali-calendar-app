import 'package:flutter/material.dart';

import '../../commons/colors.dart';

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
