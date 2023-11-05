
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:student_grage_calculation_app/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });



  return Scaffold(
      body: Center(child: Lottie.asset('assets/Animation - 1699208995263.json', // Replace with the path to your animation file
        width: 200, // Set the width of the animation
        height: 200, // Set the height of the animation
        fit: BoxFit.fill, // Adjust the fit of the animation
      ),),

    );
  }
}
