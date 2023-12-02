import 'package:flutter/material.dart';
import 'package:life_flow/view/widgets/screen_background.dart';
import 'package:life_flow/view/widgets/spacing.dart';

import 'widgets/settings_list_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: ScreenAroundPadding(
          child: ListView(
            children: [
              const Vspace(25),
              Text(
                "Settings",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const Vspace(16),
              Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Column(
                    children: [
                      SettingsListTile(
                        title: "Notifications",
                        icon: Icons.notifications_active_outlined,
                        onSwitchToggled: (value) {},
                      ),
                      const SettingsListTile(
                        title: "Language",
                        icon: Icons.language_outlined,
                      ),
                    ],
                  ),
                ),
              ),
              const Vspace(16),
              const Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Column(
                    children: [
                      SettingsListTile(
                        title: "Terms and Conditions",
                        icon: Icons.document_scanner_outlined,
                      ),
                      SettingsListTile(
                        title: "Privacy Policy",
                        icon: Icons.lock_outline_rounded,
                      ),
                      SettingsListTile(
                        title: "Contact Us",
                        icon: Icons.message_outlined,
                      ),
                    ],
                  ),
                ),
              ),
              const Vspace(16),
              const Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Column(
                    children: [
                      SettingsListTile(
                        title: "About Us",
                        icon: Icons.group_outlined,
                      ),
                    ],
                  ),
                ),
              ),
              const Vspace(16),
              Card(
                color: Theme.of(context).colorScheme.errorContainer,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Column(
                    children: [
                      SettingsListTile(
                        title: "Delete My Account",
                        icon: Icons.delete_outline_rounded,
                        titleColor: Theme.of(context).colorScheme.error,
                      ),
                    ],
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.center,
                child: Text("App Version 0.1.0"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
