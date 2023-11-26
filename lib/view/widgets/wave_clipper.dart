import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  final double startingPoint;
  final double firstControlPointDy;
  final double firstEndPointDy;
  final double secondControlPointDy;
  final double secondEndPointDy;

  WaveClipper({
    super.reclip,
    required this.startingPoint,
    required this.firstControlPointDy,
    required this.firstEndPointDy,
    required this.secondControlPointDy,
    required this.secondEndPointDy,
  });
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height * startingPoint);

    var firstControlPoint =
        Offset(size.width / 4, size.height * firstControlPointDy);
    var firstEndPoint = Offset(size.width / 2, size.height * firstEndPointDy);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(
        size.width - (size.width / 5.25), size.height * secondControlPointDy);
    var secondEndPoint = Offset(size.width, size.height * secondEndPointDy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
