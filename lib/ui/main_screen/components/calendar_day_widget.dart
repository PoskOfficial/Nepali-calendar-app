import 'package:flutter/material.dart';

import 'package:nepali_calendar/ui/commons/colors.dart';

class CalendarDayWidget extends StatelessWidget {
  const CalendarDayWidget({
    super.key,
    this.emptyBox = false,
    this.dayInAD = '1',
    this.dayInBS = '17',
  });

  final bool emptyBox;
  final String dayInBS;
  final String dayInAD;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: kCalendarBorderColor),
          right: BorderSide(color: kCalendarBorderColor),
        ),
        color: emptyBox ? kCalendarBorderColor : kCalendarComponentColor,
      ),
      child: emptyBox
          ? const SizedBox()
          : Column(
              children: [
                Text(
                  dayInBS,
                  style: TextStyle(
                      fontSize: 18,
                      color: kForegroundColor,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  dayInAD,
                  style: TextStyle(color: kForegroundColor, fontSize: 10),
                ),
              ],
            ),
    );
  }
}
