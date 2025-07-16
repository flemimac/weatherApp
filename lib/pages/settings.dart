import 'package:flutter/material.dart';

import '../designs/designs.dart';

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
                      GestureDetector(
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

class ThemeCard extends StatefulWidget {
  bool theme = true;

  ThemeCard({super.key});

  @override
  State<ThemeCard> createState() => _ThemeCardState();
}

class _ThemeCardState extends State<ThemeCard> {
  void themeChange(bool theme) {
    setState(() {
      widget.theme = theme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        Text('Theme', style: settingsTitleStyle),
        GestureDetector(
          onTap: () => themeChange(false),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Dark Theme', style: settingsDescPrimaryStyle),
                  Text(
                    'Join the Dark side!',
                    style: settingsDescSecondaryStyle,
                  ),
                ],
              ),
              if (!widget.theme) checkIcon,
            ],
          ),
        ),
        GestureDetector(
          onTap: () => themeChange(true),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Light Theme', style: settingsDescPrimaryStyle),
                  Text(
                    'Let There be Light!',
                    style: settingsDescSecondaryStyle,
                  ),
                ],
              ),
              if (widget.theme) checkIcon,
            ],
          ),
        ),
      ],
    );
  }
}

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
