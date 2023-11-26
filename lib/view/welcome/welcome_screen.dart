import 'package:flutter/material.dart';
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
              Text(
                "LifeFlow",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const Vspace(12),
              Text(
                "Connecting donors with those in need, making blood donation easier than ever",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.white,
                    ),
              ),
              const Vspace(24),
              ElevatedButton(
                onPressed: () {
                  context.goNamed(RouteNames.login);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.maxFinite, 50),
                ),
                child: const Text("Log In"),
              ),
              const Vspace(12),
              OutlinedButton(
                onPressed: () {
                  context.goNamed(RouteNames.register);
                },
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.maxFinite, 50),
                ),
                child: const Text("Register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
