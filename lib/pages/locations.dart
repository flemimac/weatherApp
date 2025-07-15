import 'package:flutter/material.dart';

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
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: backIcon,
                      ),
                      Text('Select City', style: titleStyle),
                    ],
                  ),
                  IconButton(onPressed: () {}, icon: addLocationIcon),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
