import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

getData(int year) async {
  // Load json data into a string
  String jsonString = await rootBundle
      .loadString('assets/data/$year-calendar.json', cache: true);
      
  // decode json to map
  Map decodedJson = jsonDecode(jsonString);

  return decodedJson;
}
