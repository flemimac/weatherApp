import 'package:flutter/material.dart';

import '../../designs/designs.dart';
import 'cards/cards.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
                children: [
                  Row(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: backIcon,
                      ),
                      Text('Settings', style: titleStyle),
                    ],
                  ),
                ],
              ),
              ThemeCard(),
              FeedbackCard(),
              AboutCard(),
            ],
          ),
        ),
      ),
    );
  }
}
