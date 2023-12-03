import 'package:flutter/material.dart';

class UserCircleAvatar extends StatelessWidget {
  const UserCircleAvatar({
    super.key,
    required this.name,
    this.radius,
  });
  final String name;
  final double? radius;

  String get _getLettersFromName {
    final firstLetter = name[0];

    final names = name.split(" ");
    if (names.length > 1) {
      return (firstLetter + names[1][0]).toUpperCase();
    } else {
      return (firstLetter + name[1]).toUpperCase();
    }
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      child: Text(_getLettersFromName),
    );
  }
}
