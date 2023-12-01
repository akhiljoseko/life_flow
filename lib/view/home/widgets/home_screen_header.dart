import 'package:flutter/material.dart';
import 'package:life_flow/app/app.dart';
import 'package:life_flow/view/widgets/spacing.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 23,
          child: Text("A"),
        ),
        const Hspace(12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Allwin Anto",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: AppColors.white),
            ),
            Text(
              "Kechery",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: AppColors.white),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            foregroundColor: AppColors.white,
            iconSize: 28,
          ),
          icon: const Badge(
            textColor: AppColors.lightThemeSeedColor,
            backgroundColor: AppColors.white,
            label: Text("2"),
            child: Icon(
              Icons.notifications_outlined,
            ),
          ),
        ),
      ],
    );
  }
}
