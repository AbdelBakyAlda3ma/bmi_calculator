import 'package:bmi_calculator/models/person_information_model.dart';

double calculateBMI(PersonInformationModel person) {
  double bodyMassIndex =
      person.weight * 100000 / (person.height.toInt() * person.height.toInt());
  return bodyMassIndex.toInt() / 10;
}
