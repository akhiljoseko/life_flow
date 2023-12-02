import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:life_flow/app/app.dart';

class LFAppBackButton extends StatelessWidget {
  const LFAppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pop();
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.white,
        ),
        child: const Icon(
          Icons.arrow_back_sharp,
          color: AppColors.lightThemeSeedColor,
        ),
      ),
    );
  }
}
