import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:life_flow/app/app.dart';

class ScreenBackground extends StatelessWidget {
  const ScreenBackground({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              AppImages.bg_gray_elements,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(child: child),
        ],
      ),
    );
  }
}
