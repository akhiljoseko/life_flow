import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:life_flow/app/app.dart';
import 'package:life_flow/view/widgets/screen_background.dart';
import 'package:life_flow/view/widgets/spacing.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: ScreenAroundPadding(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppImages.verify_otp_illustration,
                height: MediaQuery.sizeOf(context).height * .5,
              ),
              const Vspace(24),
              const Text(
                "Enter the OTP code sent to your registered mobile number to continue",
                textAlign: TextAlign.center,
              ),
              const Vspace(24),
              OTPTextField(
                length: 5,
                width: MediaQuery.of(context).size.width,
                // fieldWidth: 80,
                style: const TextStyle(fontSize: 17),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                onCompleted: (pin) {
                  print("Completed: $pin");
                },
              ),
              const Vspace(12),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Resend OTP"),
                ),
              ),
              const Vspace(12),
              ElevatedButton(
                onPressed: () {
                  context.goNamed(RouteNames.userDetails);
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.maxFinite, 50)),
                child: const Text("VERIFY"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
