import 'package:flutter/material.dart';

import '../../designs/designs.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        Text('About', style: settingsTitleStyle),
        GestureDetector(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About Weather', style: settingsDescPrimaryStyle),
                  Text(
                    'Read a bit more about the app.',
                    style: settingsDescSecondaryStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('The Team', style: settingsDescPrimaryStyle),
                  Text(
                    'Get to know the team that made Weather a reality.',
                    style: settingsDescSecondaryStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
