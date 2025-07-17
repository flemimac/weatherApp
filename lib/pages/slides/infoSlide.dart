import 'package:flutter/material.dart';

import '../../designs/designs.dart';

class InfoSlide extends StatelessWidget {
  const InfoSlide({super.key});

  @override
  Widget build(BuildContext context) {
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
                text: '22',
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
    );
  }
}
