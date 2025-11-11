class Exam {
  int id;
  String subject;
  DateTime dateTime;
  List<String> classrooms;

  Exam({
    required this.id, //extra id za numeracija
    required this.subject,
    required this.dateTime,
    required this.classrooms,
  });


}