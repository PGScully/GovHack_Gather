extension DateTimeExtension on DateTime {
  DateTime get dayOnly => DateTime(year, month, day);
  DateTime get timeOnly => DateTime(0, 0, 0, hour, minute, second, millisecond, microsecond);
}
