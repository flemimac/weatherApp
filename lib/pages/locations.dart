import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../designs/designs.dart';

class LocationsPage extends StatelessWidget {
  const LocationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 50, right: 30, left: 20, bottom: 50),
          child: Column(
            spacing: 50,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: backIcon,
                      ),
                      Text('Select City', style: titleStyle),
                    ],
                  ),
                  GestureDetector(onTap: () {}, child: addLocationIcon),
                ],
              ),
              Expanded(
                child: ListView(
                  children: [
                    CityCard(
                      cityName: 'Mumbai',
                      cityTemp: 22,
                      cityDesc: 'Light Drizzle',
                      cityIcon: drizzleIcon,
                    ),
                    CityCard(
                      cityName: 'Goa',
                      cityTemp: 26,
                      cityDesc: 'Sunny',
                      cityIcon: sunnyIcon,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CityCard extends StatefulWidget {
  final String? cityName;
  final int? cityTemp;
  final String? cityDesc;
  final SvgPicture? cityIcon;

  const CityCard({
    super.key,
    required this.cityName,
    required this.cityTemp,
    required this.cityDesc,
    required this.cityIcon,
  });

  @override
  State<CityCard> createState() => _CityCardState();
}

class _CityCardState extends State<CityCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.cityName ?? 'Неизвестный город',
                style: cityCardTitleStyle,
              ),
              Text('${widget.cityTemp}°C', style: cityCardDescPrimaryStyle),
              Text(
                widget.cityDesc ?? 'Нет данных',
                style: cityCardDescSecondaryStyle,
              ),
            ],
          ),
          SizedBox(height: 40, width: 40, child: widget.cityIcon),
        ],
      ),
    );
  }
}
