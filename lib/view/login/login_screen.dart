import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:life_flow/app/app.dart';
import 'package:life_flow/view/widgets/spacing.dart';
import 'package:life_flow/view/widgets/welcome_background.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeBackground(
        child: ClipPath(
          clipper: WaveClipper(),
          child: Container(
            color: AppColors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScreenAroundPadding(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        label: Text(
                          "Mobile Number",
                        ),
                      ),
                    ),
                    const Vspace(12),
                    TextFormField(
                      textInputAction: TextInputAction.done,
                      decoration: const InputDecoration(
                        label: Text(
                          "Password",
                        ),
                      ),
                    ),
                    const Vspace(12),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text("Forgot Password?"),
                      ),
                    ),
                    const Vspace(12),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.maxFinite, 50)),
                      child: const Text("Login"),
                    ),
                    const Vspace(8),
                    const Row(
                      children: [
                        Expanded(child: Divider()),
                        Text("OR"),
                        Expanded(child: Divider()),
                      ],
                    ),
                    const Vspace(8),
                    OutlinedButton(
                      onPressed: () {
                        context.goNamed(RouteNames.register);
                      },
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(double.maxFinite, 50),
                      ),
                      child: const Text("Register"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height * 0.51);

    var firstControlPoint = Offset(size.width / 4, size.height * .55);
    var firstEndPoint = Offset(size.width / 2, size.height * 0.51);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
        Offset(size.width - (size.width / 5.25), size.height * 0.45);
    var secondEndPoint = Offset(size.width, size.height * 0.5);
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
