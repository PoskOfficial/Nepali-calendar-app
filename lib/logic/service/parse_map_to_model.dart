import 'package:nepali_calendar/model/calendar_data_model/calendar_data_model.dart';

parseMapToModel(Map map, int month) {
  List monthData = map['10'];
  List<CalendarDataModel> modelList = [];
  for (var element in monthData) {
    modelList.add(CalendarDataModel.fromJson(element));
  }
  print(modelList[0].ad);
  return modelList;
}
