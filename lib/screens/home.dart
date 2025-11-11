import 'package:flutter/material.dart';
import '../models/exam_model.dart';
import '../widgets/exam_card.dart';
import '../widgets/exam_list.dart';
import '../widgets/badge.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final exams = [
      Exam(id:1, subject: "Mobilni informaciski sistemi", dateTime: DateTime(2025, 1, 1, 1, 0), classrooms: ["138", "2.1"]),
      Exam(id:2, subject: "Mobilni platformi i programiranje", dateTime: DateTime(2025, 2, 2, 2, 0), classrooms: ["200ab"]),
      Exam(id:3, subject: "Kalkulus", dateTime: DateTime(2025, 3, 3, 9, 0), classrooms: ["215"]),
      Exam(id:4, subject: "Verojatnost i statistika", dateTime: DateTime(2025, 4, 4, 3, 0), classrooms: ["3.1"]),
      Exam(id:5, subject: "Algoritmi i podatocni strukturi", dateTime: DateTime(2025, 11, 11, 14, 0), classrooms: ["2", "13"]),
      Exam(id:6, subject: "Bazi na podatoci", dateTime: DateTime(2025, 2, 6, 6, 0), classrooms: ["138"]),
      Exam(id:7, subject: "Kompjuterski mrezhi i bezbednost", dateTime: DateTime(2025, 11, 11, 13, 0), classrooms: ["amf-MF"]),
      Exam(id:8, subject: "Napreden veb dizajn", dateTime: DateTime(2025, 1, 11, 14, 0), classrooms: ["amf-FINKI"]),
      Exam(id:9, subject: "Kompjuterska grafika", dateTime: DateTime(2025, 12, 1, 14, 0), classrooms: ["amf-TMF"]),
      Exam(id:10, subject: "Elektronska i mobilna trgovija", dateTime: DateTime(2025, 12, 30, 8, 0), classrooms: ["12"]),
      Exam(id:11, subject: "Veb dizajn", dateTime: DateTime(2021, 12, 30, 18, 30), classrooms: ["12", "amf-FINKI", "amf-TMF"],),

    ];
    exams.sort((a, b) => a.dateTime.compareTo(b.dateTime));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ExamList(exams: exams),
      ),
      bottomNavigationBar: NumberBadge(total: exams.length),
    );
  }
}
