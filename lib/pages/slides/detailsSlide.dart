import 'package:flutter/material.dart';

import 'package:weather/designs/designs.dart';

class DetailsSlide extends StatelessWidget {
  const DetailsSlide({super.key});

  @override
  Widget build(BuildContext context) {
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
                Text('10.23 km/h', style: detailsDescSecondaryStyle),
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
