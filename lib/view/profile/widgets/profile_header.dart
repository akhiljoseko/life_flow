import 'package:flutter/material.dart';
import 'package:life_flow/app/app.dart';
import 'package:life_flow/view/widgets/lf_app_bar.dart';
import 'package:life_flow/view/widgets/spacing.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const height = 250.0;
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            AppImages.profile_bg,
          ),
        ),
      ),
      child: ScreenAroundPadding(
        child: Stack(
          children: [
            const Positioned(
              top: 60,
              left: 0,
              child: LFAppBar(
                title: "My Profile",
              ),
            ),
            Positioned(
              right: width * .07,
              top: height * .55,
              child: const CircleAvatar(
                radius: 40,
                child: Text("A"),
              ),
            ),
            Positioned(
              top: height * .45,
              left: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Allwin Anto V",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppColors.white,
                        ),
                  ),
                  const Vspace(5),
                  Text(
                    "You have completed 56 days of waiting time",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.white,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
