import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:student_grage_calculation_app/const/textStyle.dart';
import 'package:student_grage_calculation_app/component/subject_model.dart';

class GradeHelper{

  static List<SubjectModel> alladdedSubList=[];

  static addSubject(SubjectModel subjectModel){
    alladdedSubList.add(subjectModel);
  }

  static calculateAverage(){
    
    double totalGrade=0;
    double totalCredit=0;

    alladdedSubList.forEach((element) {
      totalGrade = totalGrade + (element.credit * element.grade);
      totalCredit = totalCredit + (element.credit);

    });
    
return totalGrade/totalCredit;
    
  }



  static List <String> letterGrade(){
    return ["Choose Grade","A+","A","A-","B+","B","B-","C+","C","D","F"];
  }

  static double numberGrade(String letter){

    switch(letter){

          case "A+": return 4;
          case "A":  return 3.75;
          case "A-": return 3.50;
          case "B+": return 3.25;
          case "B":  return 3.00;
          case "B-": return 2.75;
          case "C+": return 2.50;
          case "C":  return 2.25;
          case "D":  return 2.00;
          case "F":  return 0.00;
      default: return 1;
    }
  }

  static List<DropdownMenuItem<double>> allGradeLetterList(){
    return letterGrade().map((e) =>
        DropdownMenuItem(child: Text(e,style: AppTextStyle.subTextStyle,),value: numberGrade(e),)).toList();

  }

  static List<int> allCredits(){
    return List.generate(15, (index) => index+1).toList();

  }

  static List<DropdownMenuItem<double>> allCreditsList(){
    return allCredits().map((e) => DropdownMenuItem(child: Text(" Credit: $e",style: AppTextStyle.subTextStyle,),value: e.toDouble())).toList();
  }




}