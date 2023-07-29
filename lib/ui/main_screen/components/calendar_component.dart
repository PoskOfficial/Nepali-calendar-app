import 'package:flutter/material.dart';
import 'package:nepali_calendar/model/calendar_data_model/calendar_data_model.dart';
import 'package:nepali_calendar/ui/commons/colors.dart';
import 'package:nepali_calendar/ui/providers/calendar_provider.dart';
import 'package:provider/provider.dart';

import 'calendar_day_widget.dart';
import 'dropdown_item.dart';

class CalendarComponent extends StatelessWidget {
  CalendarComponent({super.key});

  final List<Widget> daysWidgets = [];
  @override
  Widget build(BuildContext context) {
    var calendarProv = Provider.of<CalendarProvider>(context);
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
                  icon: Icon(
                    Icons.arrow_back_ios_new_sharp,
                    color: kForegroundColor,
                  ),
                  onPressed: () {},
                ),
              ),
              // To pick the year to navigate to
              Expanded(
                flex: 2,
                child: Center(
                  child: DropdownButton(
                    dropdownColor: kBackgroundColor,
                    value: 2075,
                    items: [
                      dropdownItem('2075', value: 2075),
                      dropdownItem('2076', value: 2076),
                      dropdownItem('2077', value: 2077),
                      dropdownItem('2078', value: 2078),
                      dropdownItem('2079', value: 2079),
                      dropdownItem('2080', value: 2080),
                      dropdownItem('2081', value: 2081),
                      dropdownItem('2082', value: 2082),
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
                    dropdownColor: kBackgroundColor,
                    items: [
                      DropdownMenuItem(
                        child: Text(
                          'Shrawan',
                          style: TextStyle(color: kForegroundColor),
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
                  style: TextStyle(fontSize: 13, color: kForegroundColor),
                ),
              ),
              // Button to navigate to next month
              Expanded(
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: kForegroundColor,
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
              border: Border.all(
                color: kOuterCalendarBorder,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(1.0),
            child: FutureBuilder<List<CalendarDataModel>>(
                future: calendarProv.listOfModels(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    for (int i = 0; i < snapshot.data![0].weekday!; i++) {
                      daysWidgets.add(const CalendarDayWidget(
                        emptyBox: true,
                      ));
                    }
                    snapshot.data?.forEach(
                      (e) {
                        print(e.weekday);
                        daysWidgets.add(
                          CalendarDayWidget(
                            dayInAD: e.adDay!,
                            dayInBS: e.day!,
                          ),
                        );
                      },
                    );
                    if(snapshot.data![0].weekday!=6)
                    {
                    for (var i = 0; i < snapshot.data![snapshot.data!.length-1].weekday!; i++) {
                      daysWidgets.add(const CalendarDayWidget(
                        emptyBox: true,
                      ));
                    }
                    }
                    return GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 7,
                      children: daysWidgets,
                    );
                  }
                  return CircularProgressIndicator();
                }),
          ),
        ],
      ),
    );
  }
}
