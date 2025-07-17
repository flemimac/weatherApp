import 'package:flutter/material.dart';

import '../pages/slides/slides.dart';
import '../pages/settings/settings.dart';
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
              Expanded(
                child: PageView(
                  children: [InfoSlide(), DetailsSlide(), ForecastSlide()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
