import 'package:flutter/material.dart';

import '../../commons/colors.dart';

DropdownMenuItem<int> dropdownItem(String text, {int? value}) {
  return DropdownMenuItem(
    value: value,
    child: Text(
      text,
      style: TextStyle(color: kForegroundColor),
    ),
  );
}
