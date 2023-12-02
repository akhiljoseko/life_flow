import 'package:flutter/material.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({super.key, required this.address});

  final String address;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: SizedBox(
          width: double.maxFinite,
          child: Text(
            address,
          ),
        ),
      ),
    );
  }
}
