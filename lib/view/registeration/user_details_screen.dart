import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:life_flow/view/widgets/inline_date_input_field.dart';
import 'package:life_flow/view/widgets/spacing.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenAroundPadding(
        child: Column(
          children: [
            const Vspace(48),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Finish Your\nProfile",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.left,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text("Name"),
              ),
            ),
            const Vspace(12),
            InlineDateInput(
              initialDate: null,
              onDateSelected: (d) {},
              label: "Date of Birth",
            ),
            const Vspace(12),
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      label: Text("Gender"),
                    ),
                    items: ["Male", "Female"]
                        .map(
                          (e) => DropdownMenuItem<String>(
                            value: e,
                            child: Text(e),
                          ),
                        )
                        .toList(),
                    onChanged: (g) {},
                  ),
                ),
                const Hspace(12),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      label: Text("Blood Group"),
                    ),
                    items: [
                      "A+",
                      "A-",
                      "B+",
                      "B-",
                      "AB+",
                      "AB-",
                      "O+",
                      "O-",
                    ]
                        .map(
                          (e) => DropdownMenuItem<String>(
                            value: e,
                            child: Text(e),
                          ),
                        )
                        .toList(),
                    onChanged: (g) {},
                  ),
                ),
              ],
            ),
            const Vspace(12),
            TextFormField(
              minLines: 3,
              maxLines: 10,
              decoration: const InputDecoration(
                label: Text("Address"),
              ),
            ),
            const Vspace(12),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                label: Text("District"),
              ),
              items: [
                "Kasargod",
                "Kannur",
                "Kozhikode",
                "Malappuram",
                "Palakkad",
                "Thrissur",
                "Ernakulam",
                "Alappuzha",
                "Kottayam",
                "Idukki",
                "Pathanamthitta",
                "Thiruvanathapuram",
              ]
                  .map(
                    (e) => DropdownMenuItem<String>(
                      value: e,
                      child: Text(e),
                    ),
                  )
                  .toList(),
              onChanged: (g) {},
            ),
            const Vspace(12),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                label: Text("Taluk"),
              ),
              items: []
                  .map(
                    (e) => DropdownMenuItem<String>(
                      value: e,
                      child: Text(e),
                    ),
                  )
                  .toList(),
              onChanged: (g) {},
            ),
            const Vspace(12),
            TextFormField(
              inputFormatters: [
                LengthLimitingTextInputFormatter(6),
              ],
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text("PIN code"),
              ),
            ),
            const Vspace(24),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.maxFinite, 50),
              ),
              child: const Text("Finish"),
            ),
          ],
        ),
      ),
    );
  }
}
