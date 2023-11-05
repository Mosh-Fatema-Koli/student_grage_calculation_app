
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_grage_calculation_app/const/color.dart';

class AppText{

  static const String title ="Student Average grade Calculation";

}




class AppTextStyle{

  static final TextStyle titleTextStyle= GoogleFonts.lato(fontSize: 20,color: ColorBrand.mainColor,fontWeight: FontWeight.w600);
  static final TextStyle subTextStyle= GoogleFonts.lato(fontSize: 12,);
  static final TextStyle averageTextStyle= GoogleFonts.lato(fontSize: 30,color: ColorBrand.mainColor,fontWeight: FontWeight.w600);
  static final TextStyle textStyle= GoogleFonts.lato(fontSize: 16,color: ColorBrand.mainColor,fontWeight: FontWeight.w600);

}