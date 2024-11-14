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
                Padding(
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
                Spacer(),
                Padding(
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
                  "22.00",
                  style: kInputLabelColor.copyWith(
                      color: kOutputTextColor, fontSize: 55),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }

  void onHeightMinus() {
    print("h");
  }
}
