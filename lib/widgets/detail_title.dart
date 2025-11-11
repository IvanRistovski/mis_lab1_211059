import 'package:flutter/material.dart';
import '../models/exam_model.dart';

class DetailTitle extends StatelessWidget {
  final Exam exam;
  const DetailTitle({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        exam.subject,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }
}
