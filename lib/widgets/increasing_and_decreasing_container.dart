import 'package:flutter/material.dart';
import '../constances.dart';

class IncreasingAndDecreasingContainer extends StatelessWidget {
  final String containerTitle;
  final void Function() increasingOnPressed;
  final void Function() decreasingOnPressed;
  final int containerParameter;

  const IncreasingAndDecreasingContainer({
    super.key,
    required this.containerTitle,
    required this.containerParameter,
    required this.increasingOnPressed,
    required this.decreasingOnPressed,
  });
  @override
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(26),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Column(
        children: [
          Text(
            containerTitle,
            style: const TextStyle(color: Colors.grey),
          ),
          Text(
            "$containerParameter",
            style: const TextStyle(
              fontSize: 48,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              FloatingActionButton.small(
                heroTag: null,
                backgroundColor: const Color(0xFF5C5E6D),
                onPressed: decreasingOnPressed,
                child: const Icon(
                  Icons.remove,
                  size: 32,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              FloatingActionButton.small(
                heroTag: null,
                backgroundColor: const Color(0xFF5C5E6D),
                onPressed: increasingOnPressed,
                child: const Icon(
                  Icons.add,
                  size: 32,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
