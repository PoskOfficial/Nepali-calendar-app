import 'package:nepali_calendar/model/calendar_data_model/calendar_data_model.dart';

parseMapToModel(Map map, int month) {
  List monthData = map['10'];
  print(monthData);
  List<CalendarDataModel> modelList = [];
  for (var element in monthData) {
    modelList.add(CalendarDataModel.fromJson(element));
  }
  return modelList;
}
