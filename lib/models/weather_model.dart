import 'package:intl/intl.dart';

class WeatherData {
  final String cityName;
  final String description;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String sunrise;
  final String sunset;

  WeatherData({
    required this.cityName,
    required this.description,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.sunrise,
    required this.sunset,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      cityName: json['name'],
      description: json['weather'][0]['description'],
      temp: json['main']['temp'],
      maxTemp: json['main']['temp_max'],
      minTemp: json['main']['temp_min'],
      sunrise: _formatTime(json['sys']['sunrise'], json['timezone']),
      sunset: _formatTime(json['sys']['sunset'], json['timezone']),
    );
  }

  static String _formatTime(int timestamp, int timezoneOffset) {
    final date = DateTime.fromMillisecondsSinceEpoch(
      (timestamp + timezoneOffset) * 1000,
    );
    return DateFormat('HH:mm').format(date);
  }
}
