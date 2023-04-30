import 'package:bmi_calculator/models/result_model.dart';
import 'package:flutter/material.dart';

resultHandling(double bodyMassIndex) {
  Result result = Result();
  result.bodyMassIndex = bodyMassIndex;
  if (bodyMassIndex <= 18.5) {
    result.weightStatus = 'under weight';
    result.comment =
        'You are underweight.\nYou may need to put on some weight.';
    result.color = const Color.fromARGB(255, 250, 99, 114);
    return result;
  } else if (bodyMassIndex > 18.5 && bodyMassIndex <= 24.9) {
    result.weightStatus = 'normal';
    result.comment = 'You have a normal body weight.\nGood job!';
    result.color = const Color.fromARGB(255, 65, 241, 144);

    return result;
  } else if (bodyMassIndex >= 25 && bodyMassIndex <= 29.9) {
    result.weightStatus = 'over weight';
    result.comment =
        'You are slightly overweight.\nYou may be advised to lose some weight.';
    result.color = const Color.fromARGB(255, 248, 183, 92);

    return result;
  } else {
    result.weightStatus = 'obese';
    result.comment =
        'You are heavily overweight.\nYour health may be at risk if you do not lose weight.';
    result.color = const Color.fromARGB(255, 191, 32, 37);

    return result;
  }
}
