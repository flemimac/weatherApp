import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../designs/designs.dart';

class ForecastSlide extends StatelessWidget {
  const ForecastSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 50,
      children: [
        Text('Forecast', style: forecastTitleStyle),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            Text('Hourly Forecast', style: forecastDescPrimaryStyle),
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  HourlyForecastCard(time: '10:00', icon: drizzleIcon),
                  HourlyForecastCard(time: '11:00', icon: drizzleIcon),
                  HourlyForecastCard(time: '12:00', icon: sunnyIcon),
                  HourlyForecastCard(time: '13:00', icon: sunnyIcon),
                  HourlyForecastCard(time: '14:00', icon: sunnyIcon),
                  HourlyForecastCard(time: '15:00', icon: sunnyIcon),
                  HourlyForecastCard(time: '16:00', icon: sunnyIcon),
                  HourlyForecastCard(time: '17:00', icon: drizzleIcon),
                ],
              ),
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            Text('Daily Forecast', style: forecastDescPrimaryStyle),
            SizedBox(
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  DailyForecastCard(
                    day: '26 Dec',
                    icon: drizzleIcon,
                    maxTemp: 26,
                    minTemp: 16,
                  ),
                  DailyForecastCard(
                    day: '27 Dec',
                    icon: drizzleIcon,
                    maxTemp: 26,
                    minTemp: 16,
                  ),
                  DailyForecastCard(
                    day: '28 Dec',
                    icon: sunnyIcon,
                    maxTemp: 26,
                    minTemp: 16,
                  ),
                  DailyForecastCard(
                    day: '29 Dec',
                    icon: sunnyIcon,
                    maxTemp: 26,
                    minTemp: 16,
                  ),
                  DailyForecastCard(
                    day: '30 Dec',
                    icon: drizzleIcon,
                    maxTemp: 26,
                    minTemp: 16,
                  ),
                  DailyForecastCard(
                    day: '31 Dec',
                    icon: drizzleIcon,
                    maxTemp: 26,
                    minTemp: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class HourlyForecastCard extends StatelessWidget {
  final String? time;
  final SvgPicture? icon;

  const HourlyForecastCard({super.key, required this.time, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Column(
        spacing: 10,
        children: [
          Text(time!, style: forecastDescSecondaryStyle),
          SizedBox(width: 24, height: 24, child: icon),
        ],
      ),
    );
  }
}

class DailyForecastCard extends StatelessWidget {
  final String? day;
  final SvgPicture? icon;
  final int? maxTemp;
  final int? minTemp;

  const DailyForecastCard({
    super.key,
    required this.day,
    required this.icon,
    required this.maxTemp,
    required this.minTemp,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Column(
        spacing: 10,
        children: [
          Text('$day', style: forecastDescSecondaryStyle),
          SizedBox(width: 24, height: 24, child: icon),
          Row(
            children: [
              SizedBox(width: 11, height: 11, child: upArrowIcon),
              Text('$maxTemp°C', style: forecastTempStyle),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 11, height: 11, child: downArrowIcon),
              Text('$minTemp°C', style: forecastTempStyle),
            ],
          ),
        ],
      ),
    );
  }
}
