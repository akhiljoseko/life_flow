import 'package:flutter/material.dart';
import 'package:life_flow/view/widgets/screen_background.dart';
import 'package:life_flow/view/widgets/spacing.dart';

class UpcomingScreen extends StatelessWidget {
  const UpcomingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: ScreenAroundPadding(
          child: Center(
            child: Text(
              "Hi\nWe are working on this feature\nPlease wait for next update",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ),
      ),
    );
  }
}
