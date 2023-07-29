import 'package:flutter/material.dart';
import 'package:nepali_calendar/logic/helper/get_json_string.dart';
import 'package:nepali_calendar/logic/service/parse_map_to_model.dart';
import 'package:nepali_calendar/model/calendar_data_model/calendar_data_model.dart';

class CalendarProvider extends ChangeNotifier {
  List<CalendarDataModel> _listOfModels = [];

  Future<List<CalendarDataModel>> listOfModels() async {
    _listOfModels = parseMapToModel(await getData(2078), 1);
    return _listOfModels;
  }

  void refreshModel(int month) {
    int year = 2080;
    _listOfModels = parseMapToModel(getData(year), month);
    notifyListeners();
  }
}
