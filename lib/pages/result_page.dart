import 'package:bmi_calculator/constances.dart';
import 'package:bmi_calculator/models/result_model.dart';
import 'package:bmi_calculator/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final Result result;
  const ResultPage({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryAppColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      result.weightStatus!.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: result.color,
                      ),
                    ),
                    Text(
                      result.bodyMassIndex!.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 98,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      result.comment!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomButton(
              label: 're-calculate',
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
