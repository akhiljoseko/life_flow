import 'package:flutter/material.dart';
import 'package:life_flow/view/widgets/spacing.dart';

class LastDonationSummaryCard extends StatelessWidget {
  const LastDonationSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.calendar_month_outlined,
              size: 40,
            ),
            const Hspace(16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Previous Donation date",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  "2023 March 14",
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Colors.grey,
                      ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
