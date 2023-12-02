import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:life_flow/app/app.dart';
import 'package:life_flow/core/authentication/cubit/authentication_cubit.dart';
import 'package:life_flow/view/widgets/password_text_form_field.dart';
import 'package:life_flow/view/widgets/question_button.dart';
import 'package:life_flow/view/widgets/screen_background.dart';
import 'package:life_flow/view/widgets/spacing.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: ScreenAroundPadding(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.blood_donation_illustration,
                height: MediaQuery.sizeOf(context).height * .4,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  label: Text(
                    "Mobile Number",
                  ),
                  prefixIcon: Icon(
                    Icons.phone_outlined,
                  ),
                ),
              ),
              const Vspace(12),
              const PasswordTextFormField(),
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
                onPressed: () {
                  context.read<AuthenticationCubit>().authenticated();
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.maxFinite, 50)),
                child: const Text("LOG IN"),
              ),
              const Vspace(24),
              QuestionButton(
                question: "Don't have an account?  ",
                buttonText: "Signup here",
                onPressed: () {
                  context.goNamed(RouteNames.register);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
