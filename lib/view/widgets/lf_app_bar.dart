import 'package:flutter/material.dart';
import 'package:life_flow/app/app.dart';

import 'lf_app_back_button.dart';
import 'spacing.dart';

class LFAppBar extends StatelessWidget {
  const LFAppBar({
    super.key,
    required this.title,
    this.showBackButton = false,
  });

  final String title;
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (showBackButton) const LFAppBackButton(),
        if (showBackButton) const Hspace(12),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
        )
      ],
    );
  }
}
