import 'package:bmi_calculator/constances.dart';
import 'package:flutter/material.dart';

class GenderContainer extends StatelessWidget {
  final bool selectedElement;
  final String gender;
  final IconData icon;
  final VoidCallback onTap;

  const GenderContainer({
    super.key,
    required this.gender,
    required this.icon,
    required this.selectedElement,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: selectedElement ? containerColor : unselectedContainerColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
          child: Column(children: [
            Icon(
              icon,
              color: Colors.white,
              size: 94,
            ),
            Text(
              gender,
              style: const TextStyle(
                color: Colors.grey,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
