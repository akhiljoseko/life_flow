import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:life_flow/app/app_icons.dart';
import 'package:life_flow/app/app_theme.dart';
import 'package:life_flow/view/widgets/spacing.dart';

class DonorListTile extends StatelessWidget {
  const DonorListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
                    child: Text("A"),
                  ),
                  // Vspace(5),
                  // Text("M/25y")
                ],
              ),
              const Hspace(12),
              Expanded(
                child: Align(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Allwin Anto"),
                      const Vspace(5),
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.location_outlined),
                          const Hspace(5),
                          const Text("Kechery"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: AppColors.lightThemeSeedColor,
                radius: 15,
                child: Text(
                  "A+",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.phone,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
