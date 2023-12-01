import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:life_flow/app/app.dart';
import 'package:life_flow/view/widgets/spacing.dart';
import 'package:life_flow/view/widgets/welcome_background.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeBackground(
        child: ScreenAroundPadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  AppImages.app_logo,
                  width: 250,
                  height: 250,
                ),
              ),
              const Vspace(100),
              Text(
                "Life Flow",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: AppColors.lightThemeSeedColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const Vspace(12),
              Text(
                "Connecting donors with those in need, making blood donation easier than ever",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.lightThemeSeedColor,
                    ),
              ),
              const Vspace(24),
              ElevatedButton(
                onPressed: () {
                  context.goNamed(RouteNames.login);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.lightThemeSeedColor,
                  foregroundColor: AppColors.white,
                  minimumSize: const Size(double.maxFinite, 50),
                ),
                child: const Text("LOG IN"),
              ),
              const Vspace(12),
              ElevatedButton(
                onPressed: () {
                  context.goNamed(RouteNames.register);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.maxFinite, 50),
                ),
                child: const Text("SIGN UP"),
              ),
              const Vspace(70),
            ],
          ),
        ),
      ),
    );
  }
}
