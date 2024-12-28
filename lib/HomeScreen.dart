// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:bmitask/ResultScreen.dart';
import 'package:flutter/material.dart';


class HomeScareen extends StatefulWidget {
  const HomeScareen({super.key});

  @override
  State<HomeScareen> createState() => _HomeScareenState();
}

class _HomeScareenState extends State<HomeScareen> {
  int age = 30;
  int weight = 80;
  int height = 174;
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.blue[100],
          appBar: AppBar(
            title: Text(
              'BMI CALC',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blue[100],
          ),
          body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isMale = true;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: (isMale)
                                    ? Colors.blue[800]
                                    : Colors.blue[200],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.male,
                                      color: Colors.white, size: 50),
                                  Text(
                                    'Male',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isMale = false;
                              });
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: (!isMale)
                                      ? Colors.blue[800]
                                      : Colors.blue[200],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.female,
                                        color: Colors.white, size: 50),
                                    Text(
                                      'Female',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30),
                                    )
                                  ],
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue[200],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Height',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30)),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(height.toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30)),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'cm',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Slider(
                              value: height.toDouble(),
                              min: 120,
                              max: 200,
                              activeColor: Colors.blue[800],
                              inactiveColor: Colors.grey,
                              onChanged: (value) {
                                setState(() {
                                  height = value.toInt();
                                });
                              },
                            )
                          ],
                        )),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[200],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Age',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                Text(
                                  age.toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton.filled(
                                      onPressed: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      icon: Icon(Icons.remove),
                                      style: IconButton.styleFrom(
                                          backgroundColor: Colors.blue[800]),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    IconButton.filled(
                                        onPressed: () {
                                          setState(() {
                                            age++;
                                          });
                                        },
                                        icon: Icon(Icons.add),
                                        style: IconButton.styleFrom(
                                            backgroundColor: Colors.blue[800]))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue[200],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Weight',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  Text(
                                    weight.toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton.filled(
                                        onPressed: () {
                                          setState(() {
                                            weight--;
                                          });
                                        },
                                        icon: Icon(Icons.remove),
                                        style: IconButton.styleFrom(
                                            backgroundColor: Colors.blue[800]),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      IconButton.filled(
                                          onPressed: () {
                                            setState(() {
                                              weight++;
                                            });
                                          },
                                          icon: Icon(Icons.add),
                                          style: IconButton.styleFrom(
                                              backgroundColor:
                                                  Colors.blue[800]))
                                    ],
                                  )
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            double hieghtinmeters = height / 100;
                            double result =
                                weight / (hieghtinmeters * hieghtinmeters);
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return ResultScreen(result: result,);
                            },));
                          },
                          child: Text(
                            'Calculate',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[800],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)))))
                ],
              )),
        );
  }
}