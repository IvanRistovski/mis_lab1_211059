import 'package:flutter/material.dart';
import '../models/exam_model.dart';

class DetailInfo extends StatelessWidget {
  final Exam exam;
  const DetailInfo({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Datum: ${exam.dateTime.day}.${exam.dateTime.month}.${exam.dateTime.year}",
            style: const TextStyle(fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(height: 4),
          Text(
            "Vreme: ${exam.dateTime.hour}:${exam.dateTime.minute.toString().padLeft(2, '0')}",
            style: const TextStyle(fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(height: 4),
          Text(
            "Prostorii: ${exam.classrooms.join(', ')}",
            style: const TextStyle(fontSize: 16, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
