import 'package:flutter/material.dart';
import 'package:student_grage_calculation_app/const/color.dart';
import 'package:student_grage_calculation_app/home_page.dart';
import 'package:student_grage_calculation_app/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Grade calculation',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: ColorBrand.mainColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,


        useMaterial3: true,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

