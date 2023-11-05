class SubjectModel{
   final String name;
   final double grade;
   final double credit;

   SubjectModel({required this.name,required this.grade,required this.credit});

   @override

 String toString(){
     return "$name,$grade,$credit";
   }
}