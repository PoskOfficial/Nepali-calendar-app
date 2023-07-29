class CalendarDataModel {
  final String? year;
  final String? month;
  final String? day;
  final int? week;
  final int? weekday;
  final bool? isToday;
  final String? ad;
  final String? tithi;
  final String? adYear;
  final String? adMonth;
  final String? adDay;

  const CalendarDataModel({
    this.year,
    this.month,
    this.day,
    this.ad,
    this.adDay,
    this.adMonth,
    this.adYear,
    this.isToday,
    this.tithi,
    this.week,
    this.weekday,
  });
  factory CalendarDataModel.fromJson(Map<String, dynamic> json) {
    return CalendarDataModel(
      year: json['year'],
      month: json['month'],
      day: json['day'],
      ad: json['ad'],
      adDay: json['AD_date']['ad'].toString().substring(9, 10),
      adYear: json['AD_date']['ad'].toString().substring(0, 4),
      adMonth: json['AD_date']['ad'].toString().substring(6, 7),
      isToday: json['isToday'],
      tithi: json['tithi'],
      week: json['week'],
      weekday: json['weekday'],
    );
  }
}
