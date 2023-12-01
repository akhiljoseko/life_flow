import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class QuestionButton extends StatelessWidget {
  const QuestionButton({
    super.key,
    required this.question,
    required this.buttonText,
    required this.onPressed,
  });

  final String question;
  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          text: question,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.black),
          children: [
            TextSpan(
              text: buttonText,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
              recognizer: TapGestureRecognizer()..onTap = onPressed,
            )
          ],
        ),
      ),
    );
  }
}
