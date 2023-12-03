import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:life_flow/app/app_icons.dart';
import 'package:life_flow/app/app_theme.dart';
import 'package:life_flow/view/widgets/spacing.dart';
import 'package:life_flow/view/widgets/user_circle_avatar.dart';

class DonorListTile extends StatefulWidget {
  const DonorListTile({
    super.key,
    required this.name,
    required this.isActive,
    required this.bloodGroup,
  });

  final String name;
  final String bloodGroup;
  final bool isActive;

  @override
  State<DonorListTile> createState() => _DonorListTileState();
}

class _DonorListTileState extends State<DonorListTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 270),
      height: isExpanded ? 150 : 90,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        child: InkWell(
          onTap: _cardExpansionHandler,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Positioned.fill(
                                child: UserCircleAvatar(
                                  name: widget.name,
                                  radius: 25,
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: AppColors.lightThemeSeedColor,
                                radius: 11,
                                child: Text(
                                  widget.bloodGroup,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Hspace(12),
                    Expanded(
                      child: Align(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.name),
                            const Vspace(5),
                            Row(
                              children: [
                                SvgPicture.asset(AppIcons.location_outlined),
                                const Hspace(5),
                                const Text("Thrissur"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                        color: widget.isActive
                            ? AppColors.lightThemebuttonGreen
                            : Colors.grey[400],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Text(
                        widget.isActive ? "Active" : "Inactive",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(color: AppColors.white),
                      ),
                    )
                  ],
                ),
                if (isExpanded) ...[
                  const Vspace(16),
                  Flexible(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            child: const Text(
                              "Message",
                            ),
                          ),
                        ),
                        const Hspace(12),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              "Call",
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _cardExpansionHandler() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }
}
