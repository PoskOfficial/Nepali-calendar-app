import 'package:flutter/material.dart';
import 'package:nepali_calendar/ui/commons/colors.dart';

import 'calendar_day_widget.dart';

class CalendarComponent extends StatelessWidget {
  const CalendarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              // To navigate to previous month
              Expanded(
                flex: 1,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new_sharp,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              // To pick the year to navigate to
              Expanded(
                flex: 2,
                child: Center(
                  child: DropdownButton(
                    items: [
                      DropdownMenuItem(
                        child: const Text(
                          '2080',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                    onChanged: (val) {},
                  ),
                ),
              ),
              // To pick the month to navigate to
              Expanded(
                flex: 3,
                child: Center(
                  child: DropdownButton(
                    dropdownColor: Colors.white,
                    items: [
                      DropdownMenuItem(
                        child: Text(
                          'Shrawan',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                    onChanged: (val) {},
                  ),
                ),
              ),
              // Month of the navigated/on-screen calendar in AD
              Expanded(
                child: Text(
                  'Jul/Aug',
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
              ),
              // Button to navigate to next month
              Expanded(
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
              color: kCalendarComponentColor,
              border: Border.all(color: kOuterCalendarBorder, width: 2,),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(1.0),
            child: GridView.count(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              crossAxisCount: 7,
              children: const [
                CalendarDayWidget(
                  emptyBox: true,
                ),
                CalendarDayWidget(
                  emptyBox: true,
                ),
                CalendarDayWidget(
                  emptyBox: true,
                ),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(),
                CalendarDayWidget(emptyBox: true,),
                CalendarDayWidget(emptyBox: true,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
