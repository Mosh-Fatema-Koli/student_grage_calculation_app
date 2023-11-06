
import 'package:flutter/material.dart';
import 'package:student_grage_calculation_app/component/grade_helper.dart';
import 'package:student_grage_calculation_app/const/textStyle.dart';

class Suljectlist extends StatelessWidget {

  final Function onDismiss;

  const Suljectlist({ required this.onDismiss,Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return GradeHelper.alladdedSubList.length > 0 ? ListView.builder(
      itemCount: GradeHelper.alladdedSubList.length,
      itemBuilder:(context, index) => Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.endToStart,
        onDismissed: (value){
          onDismiss(index);
        },
        child: Card(
          child: ListTile(
            title: Text(GradeHelper.alladdedSubList[index].name),
            subtitle: Text(" Credit: ${GradeHelper.alladdedSubList[index].credit.toString()}"),
            trailing:Text("Grade Value: ${GradeHelper.alladdedSubList[index].grade.toString()}") ,
          ),
        ),
      ),

    ): Container(child: Center(child: Text("Please enter your Subject",style: AppTextStyle.titleTextStyle,)),);
  }
}

//
// class SubjectList extends StatefulWidget {
//   const SubjectList({Key? key}) : super(key: key);
//
//   @override
//   State<SubjectList> createState() => _SubjectListState();
// }
//
// class _SubjectListState extends State<SubjectList> {
//   @override
//   Widget build(BuildContext context) {
//
//     return GradeHelper.alladdedSubList.length > 0 ? ListView.builder(
//       itemCount: GradeHelper.alladdedSubList.length,
//       itemBuilder:(context, index) => Dismissible(
//         key: UniqueKey(),
//         direction: DismissDirection.endToStart,
//         onDismissed: (value){
//           setState(() {
//             GradeHelper.alladdedSubList.removeAt(index);
//           });
//         },
//         child: Card(
//           child: ListTile(
//             title: Text(GradeHelper.alladdedSubList[index].name),
//             subtitle: Text(" Credit: ${GradeHelper.alladdedSubList[index].credit.toString()}"),
//             trailing:Text("Grade Value: ${GradeHelper.alladdedSubList[index].grade.toString()}") ,
//           ),
//         ),
//       ),
//
//     ): Container(child: Center(child: Text("Please enter your Subject",style: AppTextStyle.titleTextStyle,)),);
//   }
// }
