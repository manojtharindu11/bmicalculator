import 'package:bmicalculator/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int height = 150;
  int weight = 70;
  String gender = "";
  late double bmi = calculateBMI(height: height, weight: weight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    print("Male");
                    setState(() {
                      gender = "M";
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: gender == 'M'
                            ? Colors.orange.withAlpha(150)
                            : Colors.orange.withAlpha(50),
                        borderRadius: BorderRadius.circular(25)),
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.male,
                          size: 150,
                        ),
                        Text("Male"),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    print("Female");
                    setState(() {
                      gender = "F";
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: gender == 'F'
                            ? Colors.orange.withAlpha(150)
                            : Colors.orange.withAlpha(50),
                        borderRadius: BorderRadius.circular(25)),
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.female,
                          size: 150,
                        ),
                        Text("Female"),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Height"),
                      Text("$height", style: kInputLabelColor),
                      Row(
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                if (height > 50) height--;
                                bmi = calculateBMI(
                                    height: height, weight: weight);
                              });
                              print("height:$height");
                            },
                            child: Icon(
                              Icons.remove,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                if (height < 220) height++;
                                bmi = calculateBMI(
                                    height: height, weight: weight);
                              });
                              print("height:$height");
                            },
                            child: Icon(
                              Icons.add,
                              size: 30,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Width"),
                      Text("$weight", style: kInputLabelColor),
                      Row(
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                if (weight > 35) weight--;
                                bmi = calculateBMI(
                                    height: height, weight: weight);
                              });
                              print("Weight:$weight");
                            },
                            child: Icon(
                              Icons.remove,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                if (weight < 300) weight++;
                                bmi = calculateBMI(
                                    height: height, weight: weight);
                              });
                              print("Weight:$weight");
                            },
                            child: Icon(
                              Icons.add,
                              size: 30,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Text("BMI"),
                Text(
                  bmi.toStringAsFixed(2),
                  style: kInputLabelColor.copyWith(
                      color: kOutputTextColor, fontSize: 55),
                ),
                Text(bmiCategory(bmi))
              ],
            )
          ]),
        ),
      ),
    );
  }

  double calculateBMI({required int height, required int weight}) {
    return weight / (height * height) * 10000;
  }

  String bmiCategory(double bmi) {
    if (bmi < 18.5) {
      return "Underweight";
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return "Normal";
    } else if (bmi >= 24.9 && bmi < 29.9) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }
}
