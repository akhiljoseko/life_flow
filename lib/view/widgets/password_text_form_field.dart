import 'package:flutter/material.dart';

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({
    super.key,
    this.label,
  });

  final String? label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.done,
      obscureText: true,
      decoration: InputDecoration(
        label: Text(
          label ?? "Password",
        ),
        prefixIcon: const Icon(
          Icons.lock_outline_rounded,
        ),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.visibility_off_outlined,
          ),
        ),
      ),
    );
  }
}
