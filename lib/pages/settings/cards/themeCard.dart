import 'package:flutter/material.dart';

import '../../../designs/designs.dart';

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
        InkWell(
          onTap: () => themeChange(false),
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
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
        InkWell(
          onTap: () => themeChange(true),
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
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
