import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: const Column(children: [
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
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Height"),
                      Text("176",
                          style: TextStyle(
                              color: Color(0xffffb047),
                              fontSize: 50,
                              fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          FloatingActionButton(
                            onPressed: null,
                            child: Icon(
                              Icons.remove,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          FloatingActionButton(
                            onPressed: null,
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
                      Text("76",
                          style: TextStyle(
                              color: Color(0xffffb047),
                              fontSize: 50,
                              fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          FloatingActionButton(
                            onPressed: null,
                            child: Icon(
                              Icons.remove,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          FloatingActionButton(
                            onPressed: null,
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
            Column(
              children: [Text("BMI"), Text("22.00")],
            )
          ]),
        ),
      ),
    );
  }
}
