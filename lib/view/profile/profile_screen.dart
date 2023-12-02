import 'package:flutter/material.dart';
import 'package:life_flow/view/profile/widgets/slidable_button.dart';
import 'package:life_flow/view/widgets/screen_background.dart';
import 'package:life_flow/view/widgets/spacing.dart';

import 'widgets/last_donation_summary_card.dart';
import 'widgets/profile_header.dart';
import 'widgets/profile_summary_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileHeader(),
              Vspace(18),
              ScreenAroundPadding(
                child: ProfileSummaryCard(),
              ),
              Vspace(18),
              ScreenAroundPadding(
                child: SlidableButton(),
              ),
              Vspace(18),
              ScreenAroundPadding(
                child: LastDonationSummaryCard(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
