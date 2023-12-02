import 'package:flutter/material.dart';
import 'package:life_flow/app/app_theme.dart';
import 'package:life_flow/view/profile/widgets/slidable_button.dart';
import 'package:life_flow/view/widgets/screen_background.dart';
import 'package:life_flow/view/widgets/spacing.dart';

import 'widgets/address_card.dart';
import 'widgets/last_donation_summary_card.dart';
import 'widgets/profile_header.dart';
import 'widgets/profile_summary_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ProfileHeader(),
              const Vspace(18),
              const ScreenAroundPadding(
                child: ProfileSummaryCard(),
              ),
              const Vspace(18),
              const ScreenAroundPadding(
                child: SlidableButton(),
              ),
              const Vspace(18),
              const ScreenAroundPadding(
                child: LastDonationSummaryCard(),
              ),
              const Vspace(12),
              const ScreenAroundPadding(
                child: AddressCard(
                  address: "Vazhappilly (H)\nP.O. Choondal\nParannur\n680596",
                ),
              ),
              const Vspace(8),
              const ScreenAroundPadding(
                child: AddressCard(address: "Kunnamkulam"),
              ),
              const Vspace(8),
              const ScreenAroundPadding(
                child: AddressCard(address: "Thrissur"),
              ),
              const Vspace(12),
              ScreenAroundPadding(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.lightThemeSeedColor,
                    foregroundColor: AppColors.white,
                    minimumSize: const Size(double.maxFinite, 50),
                  ),
                  child: const Text(
                    "Edit Profile",
                  ),
                ),
              ),
              const Vspace(25),
            ],
          ),
        ),
      ),
    );
  }
}
