import 'package:flutter/material.dart';
import 'package:nepali_calendar/logic/helper/get_json_string.dart';
import 'package:nepali_calendar/logic/service/parse_map_to_model.dart';
import 'package:nepali_calendar/model/calendar_data_model/calendar_data_model.dart';

class CalendarProvider extends ChangeNotifier {
  List<CalendarDataModel> _listOfModels = [];
  int _year = 2080;
  int _month = 4;
  bool isChanged = false;

  Future<List<CalendarDataModel>> get listOfModels async {
    _listOfModels = parseMapToModel(await getData(_year), _month);
    return _listOfModels;
  }

  int get year => _year;
  int get month => _month;

  set year(int year) {
    _year = year;
    notifyListeners();
  }

  set month(int month) {
    _month = month;
    notifyListeners();
  }

  void refreshListOfModels() async {
    _listOfModels = parseMapToModel(await getData(_year), _month);
    notifyListeners();
  }
}
