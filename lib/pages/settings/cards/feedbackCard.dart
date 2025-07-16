import 'package:flutter/material.dart';

import '../../designs/designs.dart';

class FeedbackCard extends StatelessWidget {
  const FeedbackCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        Text('FeedBack', style: settingsTitleStyle),
        GestureDetector(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Report an Issue', style: settingsDescPrimaryStyle),
                  Text(
                    'Facing an issue? Report and we’ll look into it.',
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
                  Text('Rate on App Store', style: settingsDescPrimaryStyle),
                  Text(
                    'Enjoying the app? Leave a review on the App Store.',
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
