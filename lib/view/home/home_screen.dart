import 'package:flutter/material.dart';
import 'package:life_flow/app/app.dart';
import 'package:life_flow/view/widgets/spacing.dart';

import 'widgets/donor_list_tile.dart';
import 'widgets/home_screen_header.dart';
import 'widgets/home_search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xFFD51006),
                    Color(0xFFF26E69),
                  ],
                ),
              ),
              child: ScreenAroundPadding(
                child: Column(
                  children: [
                    const Vspace(55),
                    const HomeScreenHeader(),
                    const Vspace(25),
                    Text(
                      "You're ready to give blood",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const Vspace(25),
                    const HomeSearchBar(),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return DonorListTile(
                    name: users[index],
                    isActive: index % 2 == 0,
                    bloodGroup: index % 3 == 0
                        ? "O+"
                        : index % 2 == 0
                            ? "A+"
                            : "B+",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final users = [
  "Jinson T V",
  "Sijo",
  "Alfin",
  "Jilna",
  "Gloria",
  "Robert",
  "Akhil Jose"
];
