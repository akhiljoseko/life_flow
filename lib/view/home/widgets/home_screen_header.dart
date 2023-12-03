import 'package:flutter/material.dart';
import 'package:life_flow/app/app.dart';
import 'package:life_flow/view/widgets/spacing.dart';
import 'package:life_flow/view/widgets/user_circle_avatar.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const UserCircleAvatar(
          name: "Allwin Anto",
          radius: 23,
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
              "Thrissur",
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
