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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        AppImages.app_logo,
                        width: 250,
                        height: 250,
                      ),
                    ),
                    const Vspace(100),
                    Text(
                      "Life Flow",
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
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
                    const Vspace(40),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppImages.jy_logo,
                          width: 32,
                          height: 32,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          width: 2,
                          height: 30,
                          color: Colors.black,
                        ),
                        Image.asset(
                          AppImages.nallayalkaran_logo,
                          width: 100,
                          height: 45,
                        ),
                      ],
                    ),
                    Text(
                      "JESUS YOUTH THRISSUR",
                      style: Theme.of(context).textTheme.labelSmall,
                    )
                  ],
                ),
              ),
              const Vspace(24),
            ],
          ),
        ),
      ),
    );
  }
}
