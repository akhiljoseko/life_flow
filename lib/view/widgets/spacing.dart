import 'package:flutter/material.dart';

class Hspace extends StatelessWidget {
  const Hspace(this.width, {super.key});

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}

class Vspace extends StatelessWidget {
  const Vspace(this.height, {super.key});

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
