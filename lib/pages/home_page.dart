import 'package:bmi_calculator/functions/result_handling.dart';
import 'package:bmi_calculator/models/person_information_model.dart';
import 'package:bmi_calculator/models/result_model.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:bmi_calculator/widgets/custom_button.dart';
import 'package:bmi_calculator/widgets/selecting_height_container.dart';
import 'package:flutter/material.dart';
import '../constances.dart';
import '../functions/calculate_bmi.dart';
import '../widgets/increasing_and_decreasing_container.dart';
import '../widgets/gender_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool maleIsSelected = false;
  bool femaleIsSelected = false;
  PersonInformationModel person = PersonInformationModel();
  late double bmi;
  late Result result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryAppColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              children: [
                // the part where chose gender
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // the container of male
                    GenderContainer(
                      selectedElement: maleIsSelected,
                      gender: 'MALE',
                      icon: Icons.male,
                      onTap: () {
                        setState(() {
                          person.gender = 'female';
                          maleIsSelected = true;
                          femaleIsSelected = false;
                        });
                      },
                    ),
                    const SizedBox(width: 24),

                    // the container of female
                    GenderContainer(
                      selectedElement: femaleIsSelected,
                      gender: 'FEMALE',
                      icon: Icons.female,
                      onTap: () {
                        setState(() {
                          person.gender = 'female';
                          femaleIsSelected = true;
                          maleIsSelected = false;
                        });
                      },
                    )
                  ],
                ),
                const SizedBox(height: 24),

                // the container of slider of height
                SelectingHeightContainer(
                  value: person.height,
                  onChanged: (value) {
                    setState(() {
                      person.height = value;
                    });
                  },
                ),

                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // the container of weight
                    IncreasingAndDecreasingContainer(
                      containerTitle: 'weight'.toUpperCase(),
                      containerParameter: person.weight,
                      increasingOnPressed: () {
                        setState(() {
                          person.weight++;
                        });
                      },
                      decreasingOnPressed: () {
                        setState(() {
                          person.weight--;
                        });
                      },
                    ),

                    // the container of age
                    IncreasingAndDecreasingContainer(
                      containerTitle: 'age'.toUpperCase(),
                      containerParameter: person.age,
                      increasingOnPressed: () {
                        setState(() {
                          person.age++;
                        });
                      },
                      decreasingOnPressed: () {
                        setState(() {
                          person.age--;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),

          // part of the button of calculate
          CustomButton(
            label: 'calculate',
            onPressed: () {
              bmi = calculateBMI(person);
              result = resultHandling(bmi);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(result: result),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
