import 'package:flutter/material.dart';

class CalendarComponent extends StatelessWidget {
  const CalendarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            // To navigate to previous month
            Expanded(
              flex: 1,
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_sharp),
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
                      child: const Text('2080'),
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
                  items: [
                    DropdownMenuItem(
                      child: Text('Shrawan'),
                    ),
                  ],
                  onChanged: (val) {},
                ),
              ),
            ),
            // Month of the navigated/on-screen calendar in AD
            Expanded(
              child: Text('Jul/Aug', style: TextStyle(fontSize: 13),),
            ),
            // Button to navigate to next month
            Expanded(
              child: IconButton(
                icon: Icon(Icons.arrow_forward_ios_sharp),
                onPressed: () {},
              ),
            ),
          ],
        ),

      ],
    );
  }
}
