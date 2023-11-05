
import 'package:flutter/material.dart';
import 'package:student_grage_calculation_app/const/textStyle.dart';

class ShowAverage extends StatelessWidget {

  final double average;
  final int numberOfSubject;

  const ShowAverage({ required this.average,required this.numberOfSubject, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          numberOfSubject>0 ? "$numberOfSubject Subject":" Enter your Subject",style: AppTextStyle.subTextStyle, textAlign: TextAlign.center,
        ),
        Text(average>0? "${average.toStringAsFixed(2)}":"0.0",style: AppTextStyle.averageTextStyle,),
        Text("Average",style: AppTextStyle.textStyle,),



      ],

    );
  }
}
