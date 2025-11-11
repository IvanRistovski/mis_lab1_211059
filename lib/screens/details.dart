import 'package:flutter/material.dart';
import '../models/exam_model.dart';
import '../widgets/detail_title.dart';
import '../widgets/detail_info.dart';
import '../widgets/time_until_exam.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  String timeUntilExam(DateTime examDate) {
    final now = DateTime.now();
    final diff = examDate.difference(now);
    final days = diff.inDays;
    final hours = diff.inHours % 24;
    return "${days.abs()} dena, ${hours.abs()} chasa ${diff.isNegative ? 'pominati' : 'do polaganje'}";
  }

  @override
  Widget build(BuildContext context) {
    final exam = ModalRoute.of(context)!.settings.arguments as Exam;

    return Scaffold(
      appBar: AppBar(
        title: Text("Izbran predmet"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // add this line
            children: [
              const SizedBox(height: 20),
              DetailTitle(exam: exam),
              const SizedBox(height: 20),
              DetailInfo(exam: exam),
              const SizedBox(height: 20),
              TimeUntilLabel(text: timeUntilExam(exam.dateTime)),
            ],
          ),

        ),
      ),
    );
  }
}
