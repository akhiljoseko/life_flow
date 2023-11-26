import 'package:flutter/material.dart';
import 'package:life_flow/app/app.dart';

class WelcomeBackground extends StatelessWidget {
  const WelcomeBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppImages.welcome_bg),
            colorFilter: ColorFilter.mode(
              Color(0xFFEF9390),
              BlendMode.softLight,
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
