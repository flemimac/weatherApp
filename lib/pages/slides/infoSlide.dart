import 'package:flutter/material.dart';

import '../../models/weather_model.dart';
import '../../services/weather_service.dart';

import '../../designs/designs.dart';

class InfoSlide extends StatefulWidget {
  const InfoSlide({super.key});

  @override
  State<InfoSlide> createState() => _InfoSlideState();
}

class _InfoSlideState extends State<InfoSlide> {
  final WeatherService _weatherService = WeatherService();
  WeatherData? _weatherData;

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  Future<void> _fetchWeather() async {
    try {
      final weather = await _weatherService.fetchWeather('Mumbai');
      setState(() {
        _weatherData = weather;
      });
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_weatherData == null) {
      return Center(child: CircularProgressIndicator());
    }

    return Column(
      children: [
        Text('in sync', style: appBarDescStyle),
        SizedBox(height: 30),
        Column(
          spacing: 20,
          children: [
            Text('Friday, 25 December 2020', style: titleStyle),
            RichText(
              text: TextSpan(
                text: '${_weatherData!.temp.toStringAsFixed(0)}',
                style: TextStyle(
                  fontSize: 96,
                  color: Colors.black,
                  fontFamily: 'UbuntuCondensed',
                ),
                children: <TextSpan>[TextSpan(text: '°C', style: descStyle)],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                Row(
                  children: [
                    downArrowIcon,
                    Text(
                      '${_weatherData!.minTemp.toStringAsFixed(0)}°C',
                      style: titleStyle,
                    ),
                  ],
                ),
                Row(
                  children: [
                    upArrowIcon,
                    Text(
                      '${_weatherData!.maxTemp.toStringAsFixed(0)}°C',
                      style: titleStyle,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 50),
        Column(
          spacing: 20,
          children: [
            drizzleIcon,
            Text(_weatherData!.description, style: titleStyle),
          ],
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 30,
          children: [
            Row(
              spacing: 10,
              children: [
                sunriseIcon,
                Text('${_weatherData!.sunrise} AM', style: titleStyle),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                sunsetIcon,
                Text('${_weatherData!.sunset} PM', style: titleStyle),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
