import 'package:bmitask/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      Navigator.push(context, MaterialPageRoute(builder:(context){
        return HomeScareen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Lottie.asset('./assets/images/bmibird.json'),
              Text(
                ' BMI CALCOLATOR ',
                style: TextStyle(
                    color: Colors.blue[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Text(
                'dont over think!',
                style: TextStyle(color: Colors.blue[400]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
