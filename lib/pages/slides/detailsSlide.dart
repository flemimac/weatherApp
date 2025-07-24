import 'package:flutter/material.dart';

import '../../services/weather_service.dart';
import '../../designs/designs.dart';
import '../../models/weather_model.dart';

class DetailsSlide extends StatefulWidget {
  const DetailsSlide({super.key});

  @override
  State<DetailsSlide> createState() => _DetailsSlideState();
}

class _DetailsSlideState extends State<DetailsSlide> {
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
      return const Center(child: CircularProgressIndicator());
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 30,
      children: [
        Text('Details', style: detailsTitleStyle),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5,
              children: [
                Text('Precipitation', style: detailsDescPrimaryStyle),
                Text('0.0 mm', style: detailsDescSecondaryStyle),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5,
              children: [
                Text('SE Wind', style: detailsDescPrimaryStyle),
                Text(
                  '${_weatherData!.windSpeed} km/h',
                  style: detailsDescSecondaryStyle,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5,
              children: [
                Text('Humidity', style: detailsDescPrimaryStyle),
                Text('56 %', style: detailsDescSecondaryStyle),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5,
              children: [
                Text('Visibility', style: detailsDescPrimaryStyle),
                Text('14.83 km', style: detailsDescSecondaryStyle),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5,
              children: [
                Text('UV', style: detailsDescPrimaryStyle),
                Text('Lowest', style: detailsDescSecondaryStyle),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5,
              children: [
                Text('Pressure', style: detailsDescPrimaryStyle),
                Text('1012 hPa', style: detailsDescSecondaryStyle),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
