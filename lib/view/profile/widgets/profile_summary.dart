import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:life_flow/app/app_icons.dart';
import 'package:life_flow/app/app_theme.dart';
import 'package:life_flow/view/widgets/spacing.dart';

class ProfileSummary extends StatelessWidget {
  const ProfileSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _SummaryItem(
              title: "Life Saved",
              value: "3",
              icon: AppIcons.half_filled_heart,
            ),
            _SummaryItem(
              title: "Blood Group",
              value: "AB+",
              icon: AppIcons.blood_drop,
            ),
            _SummaryItem(
              title: "Reward Points",
              value: "120",
              icon: AppIcons.blood_drop,
            ),
          ],
        ),
      ),
    );
  }
}

class _SummaryItem extends StatelessWidget {
  const _SummaryItem({
    required this.title,
    required this.value,
    required this.icon,
  });
  final String title;
  final String value;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(icon),
        const Vspace(3),
        Text(
          value,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.lightThemeSeedColor,
                fontWeight: FontWeight.bold,
              ),
        ),
        const Vspace(3),
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppColors.lightThemeSeedColor,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
