import 'package:flutter/material.dart';
import 'package:weather/pages/settings.dart';

import '../pages/locations.dart';
import '../designs/designs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 50,
            right: 30,
            left: 30,
            bottom: 50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    // spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mumbai', style: appBarTitleStyle),
                      Text('Current Location', style: appBarDescStyle),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => LocationsPage(),
                            ),
                          );
                        },
                        icon: locationsIcon,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => SettingsPage(),
                            ),
                          );
                        },
                        icon: settingsIcon,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50),
              Text('in sync', style: appBarDescStyle),
              SizedBox(height: 30),
              Column(
                spacing: 20,
                children: [
                  Text('Friday, 25 December 2020', style: titleStyle),
                  RichText(
                    text: TextSpan(
                      text: '22',
                      style: TextStyle(
                        fontSize: 96,
                        color: Colors.black,
                        fontFamily: 'UbuntuCondensed',
                      ),
                      children: <TextSpan>[
                        TextSpan(text: '°C', style: descStyle),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 20,
                    children: [
                      Row(
                        children: [
                          downArrowIcon,
                          Text('16°C', style: titleStyle),
                        ],
                      ),
                      Row(
                        children: [
                          upArrowIcon,
                          Text('26°C', style: titleStyle),
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
                  Text('Light Drizzle', style: titleStyle),
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
                      Text('09:18 AM', style: titleStyle),
                    ],
                  ),
                  Row(
                    spacing: 10,
                    children: [
                      sunsetIcon,
                      Text('06:32 PM', style: titleStyle),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
