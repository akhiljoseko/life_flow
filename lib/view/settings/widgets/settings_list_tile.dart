import 'package:flutter/material.dart';
import 'package:life_flow/view/widgets/spacing.dart';

class SettingsListTile extends StatelessWidget {
  const SettingsListTile({
    super.key,
    required this.title,
    required this.icon,
    this.onSwitchToggled,
  });
  final String title;
  final IconData icon;
  final ValueChanged<bool>? onSwitchToggled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const Hspace(12),
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const Spacer(),
                if (onSwitchToggled != null)
                  Switch(
                    value: true,
                    onChanged: onSwitchToggled,
                  ),
              ],
            ),
            const Vspace(12),
            const Divider(height: 0),
          ],
        ),
      ),
    );
  }
}
