import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:life_flow/app/app.dart';
import 'package:life_flow/view/widgets/spacing.dart';
import 'package:life_flow/view/widgets/wave_clipper.dart';
import 'package:life_flow/view/widgets/welcome_background.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeBackground(
        headingText: "Welcome\nBack",
        child: ClipPath(
          clipper: WaveClipper(
            startingPoint: 0.51,
            firstControlPointDy: 0.55,
            firstEndPointDy: 0.51,
            secondControlPointDy: 0.45,
            secondEndPointDy: 0.5,
          ),
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
                      obscureText: true,
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
                      child: const Text("LOG IN"),
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
                      child: const Text("SIGN UP"),
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
