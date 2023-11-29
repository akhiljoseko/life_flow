import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:life_flow/app/app.dart';
import 'package:life_flow/view/widgets/question_button.dart';
import 'package:life_flow/view/widgets/spacing.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenAroundPadding(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(
              AppImages.blood_donation_illustration,
              height: MediaQuery.sizeOf(context).height * .3,
            ),
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
            QuestionButton(
              question: "Already have an account?  ",
              buttonText: "Login here",
              onPressed: () {
                context.goNamed(RouteNames.login);
              },
            )
          ],
        ),
      ),
    );
  }
}
