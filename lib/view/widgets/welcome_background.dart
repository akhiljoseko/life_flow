import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    return SizedBox(
      width: double.maxFinite,
      height: MediaQuery.sizeOf(context).height,
      child: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(AppImages.bg_gray_elements),
          ),
          Positioned(
            left: -10,
            bottom: 0,
            child: Image.asset(
              AppImages.corner_red_element,
              height: 100,
              width: 100,
            ),
          ),
          Positioned(
            right: -10,
            top: 0,
            child: RotatedBox(
              quarterTurns: 2,
              child: Image.asset(
                AppImages.corner_red_element,
                height: 100,
                width: 100,
              ),
            ),
          ),
          Positioned.fill(child: child),
          if (headingText != null)
            Positioned(
              top: MediaQuery.sizeOf(context).height * .15,
              left: 0,
              child: ScreenAroundPadding(
                child: Text(
                  headingText!,
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: AppColors.lightThemeSeedColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
