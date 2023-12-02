import 'package:flutter/material.dart';
import 'package:life_flow/app/app.dart';
import 'package:slidable_button/slidable_button.dart';

class SlidableButton extends StatefulWidget {
  const SlidableButton({super.key});

  @override
  State<SlidableButton> createState() => _SlidableButtonState();
}

class _SlidableButtonState extends State<SlidableButton> {
  String buttonText = "Swipe >";
  String buttonDescription = "Now Inavtive";
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const StadiumBorder(),
      elevation: 5,
      child: HorizontalSlidableButton(
        height: 50,
        width: double.maxFinite,
        buttonWidth: 100.0,
        color: AppColors.white,
        buttonColor: isActive ? AppColors.lightThemebuttonGreen : Colors.grey,
        dismissible: false,
        label: Text(
          isActive ? "< Swipe" : "Swipe >",
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: AppColors.white, fontWeight: FontWeight.bold),
        ),
        onChanged: _onChangeHandler,
        child: Align(
          alignment: isActive ? Alignment.centerLeft : Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              isActive ? "Currently Active" : "Currently Inactive",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
      ),
    );
  }

  void _onChangeHandler(SlidableButtonPosition value) {
    setState(() {
      isActive = value == SlidableButtonPosition.end;
    });
  }
}
