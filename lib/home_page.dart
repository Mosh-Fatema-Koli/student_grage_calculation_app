
import 'package:flutter/material.dart';
import 'package:student_grage_calculation_app/const/color.dart';
import 'package:student_grage_calculation_app/const/textStyle.dart';
import 'package:student_grage_calculation_app/component/grade_helper.dart';
import 'package:student_grage_calculation_app/component/show_average.dart';
import 'package:student_grage_calculation_app/component/sub_list_page.dart';
import 'package:student_grage_calculation_app/component/subject_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController incomingSubjectController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  double selectedGradeValue= 1;
  double selectedCreditValue= 1;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.blue,
            padding: EdgeInsets.only(top: 40,left: 10,right: 10,bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppText.title,style: AppTextStyle.titleTextStyle,),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 3,
                        child: createForm()),
                    Expanded(
                        flex: 1,
                        child: IconButton(onPressed: (){

                          addSubjectCalclulate();

                        }, icon: Icon(Icons.send,size: 30,color: ColorBrand.mainColor,))),
                    Expanded(
                        flex: 1,
                        child: ShowAverage(numberOfSubject: GradeHelper.alladdedSubList.length ,average: GradeHelper.calculateAverage(),)),

                  ],
                )
              ],
            ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(10),
            child: SubjectList(),
          ))
        ],
      ),

    );
  }

 createForm() {
    return Form(
               key: formKey,
                    child: Column(
                      children: [
                        SubjectNameField(),
                        Row(
                          children: [
                            createLetterGrade(),
                            SizedBox(width: 10,),
                            createCredit()

                          ],
                        )



                      ],
                    ),
                  );
  }



Widget SubjectNameField() => TextFormField(

  controller: incomingSubjectController,
    validator: (value){
      if(value!.length <= 0){
        return "Please Enter a subject";
      }else{
        return null;
      }
    },

      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        hintText: "Subject Name",
        filled: true,
        isDense: false ,
        fillColor: ColorBrand.mainColor
      ),

  );

  createLetterGrade() => Container(
margin: EdgeInsets.symmetric(vertical: 10),
    padding: EdgeInsets.symmetric(horizontal: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: ColorBrand.mainColor
    ),
    
    child: DropdownButton<double>(items: GradeHelper.allGradeLetterList(),
      onChanged:(value) {
            setState(() {
              selectedGradeValue= value!;
            });

    } ,
    value: selectedGradeValue,
      elevation: 0,
      isDense: true,


    ),
  );

  createCredit() => Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    padding: EdgeInsets.symmetric(horizontal: 5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorBrand.mainColor
    ),

    child: DropdownButton<double>(items: GradeHelper.allCreditsList(),
      onChanged:(value) {
        setState(() {
          selectedCreditValue= value!;
        });

      } ,
      value: selectedCreditValue,
      elevation: 0,
        isDense: true,
      hint:Text("Credits")


    ),
  );

  addSubjectCalclulate() {

      if(formKey.currentState!.validate()){
        formKey.currentState!.save();
        var addSubject = SubjectModel(name: incomingSubjectController.text, grade: selectedGradeValue, credit: selectedCreditValue);
        incomingSubjectController.clear();
        GradeHelper.addSubject(addSubject);
        setState(() {

        });
        print(GradeHelper.alladdedSubList);
        print(GradeHelper.calculateAverage());
      }
  }



}
