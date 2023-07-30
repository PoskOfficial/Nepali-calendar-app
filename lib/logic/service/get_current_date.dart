import 'package:nepali_utils/nepali_utils.dart';

NepaliDateTime getNepaliDate(DateTime dateTime) {
  return dateTime.toNepaliDateTime();
}

Map<String, int> getTodayDate() {
  return {
    'year':getNepaliDate(DateTime.now()).year,
    'month': getNepaliDate(DateTime.now()).month,
    'day': getNepaliDate(DateTime.now()).day,
  };
}
