import 'package:flutter/material.dart';

import '../constances.dart';

class SelectingHeightContainer extends StatelessWidget {
  final double value;
  final void Function(double) onChanged;
  const SelectingHeightContainer({
    super.key,
    required this.value,
    required this.onChanged,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Column(
        children: [
          const Text(
            'HEIGHT',
            style: TextStyle(color: Colors.grey),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                value.toInt().toString(),
                style: const TextStyle(
                  fontSize: 48,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'cm',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
          SliderTheme(
            data: SliderThemeData(
              trackHeight: 1,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 5),
              overlayShape: SliderComponentShape.noThumb,
              trackShape: const RectangularSliderTrackShape(),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Slider(
                activeColor: Colors.red,
                inactiveColor: Colors.grey,
                min: 140,
                max: 200,
                value: value,
                onChanged: onChanged,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
