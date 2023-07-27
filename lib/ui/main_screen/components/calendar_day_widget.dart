import 'package:flutter/material.dart';
import 'package:nepali_calendar/ui/commons/colors.dart';

class CalendarDayWidget extends StatelessWidget {
  const CalendarDayWidget({
    super.key,
    this.emptyBox = false,
  });

  final bool emptyBox;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: kCalendarBorderColor),
          right: BorderSide(color: kCalendarBorderColor),
        ),
        color: emptyBox?kCalendarBorderColor:null,
      ),
      child: emptyBox? const SizedBox(): const Column(
        children: [
          Text(
            '01',
            style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '17',
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
