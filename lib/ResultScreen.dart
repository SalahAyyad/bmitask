// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double result;
  String getStatus (){
    if (result < 18.5){
      return "Underweight";
      }
      else if(result <24.9){
        return "Normal";
        }
        else if (result <29.9){

          return "Overwieght";
          }
          else {
            return "Obese";
          }
        }
      
   Color getStatusColor(){if (result < 18.5){
      return Colors.black;
      }
      else if(result <24.9){
        return Colors.green;
        }
        else if (result <29.9){

          return Colors.orange;
          }
          else {
            return Colors.red;
          }
        }
  
  const ResultScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),color: Colors.white,onPressed: () {
          Navigator.pop(context);
        },),
        title: Text(
          'BMI CALC',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[100],
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(getStatus(),style: TextStyle(color: getStatusColor(),fontSize: 25,fontWeight: FontWeight.bold),)
              ,Text(
                      result.toStringAsFixed(2),
                      style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
                    ),
            ],
          )),
    );
  }
}
