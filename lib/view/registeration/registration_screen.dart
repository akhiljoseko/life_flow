import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:life_flow/app/app.dart';
import 'package:life_flow/view/widgets/spacing.dart';
import 'package:life_flow/view/widgets/wave_clipper.dart';
import 'package:life_flow/view/widgets/welcome_background.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeBackground(
        headingText: "Create\nAccount",
        child: ClipPath(
          clipper: WaveClipper(
            startingPoint: 0.4,
            firstControlPointDy: 0.42,
            firstEndPointDy: 0.4,
            secondControlPointDy: 0.43,
            secondEndPointDy: 0.44,
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
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        label: Text(
                          "Name",
                        ),
                      ),
                    ),
                    const Vspace(12),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text(
                          "Mobile Number",
                        ),
                      ),
                    ),
                    const Vspace(12),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      decoration: const InputDecoration(
                        label: Text(
                          "Password",
                        ),
                      ),
                    ),
                    const Vspace(12),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      decoration: const InputDecoration(
                        label: Text(
                          "Confirm Password",
                        ),
                      ),
                    ),
                    const Vspace(24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.info_outline_rounded,
                          size: 18,
                        ),
                        const Hspace(8),
                        Text(
                          "We will send an OTP to this mobile number",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
                    const Vspace(8),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.maxFinite, 50)),
                      child: const Text("Send OTP"),
                    ),
                    const Vspace(24),
                    RichText(
                      text: TextSpan(
                        text: "Already have an account?  ",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.black),
                        children: [
                          TextSpan(
                            text: "Login here",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context.goNamed(RouteNames.login);
                              },
                          )
                        ],
                      ),
                    )
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
