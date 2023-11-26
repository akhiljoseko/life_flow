import 'package:flutter/material.dart';
import 'package:life_flow/app/app.dart';
import 'package:life_flow/view/widgets/spacing.dart';

class WelcomeBackground extends StatelessWidget {
  const WelcomeBackground({
    super.key,
    required this.child,
    this.headingText,
  });

  final Widget child;
  final String? headingText;

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
        child: Stack(
          children: [
            Positioned.fill(child: child),
            if (headingText != null)
              Positioned(
                top: MediaQuery.sizeOf(context).height * .25,
                left: 0,
                child: ScreenAroundPadding(
                  child: Text(
                    headingText!,
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
