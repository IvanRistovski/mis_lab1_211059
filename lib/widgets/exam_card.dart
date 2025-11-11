import 'package:flutter/material.dart';
import '../models/exam_model.dart';

class ExamCard extends StatelessWidget {
  final Exam exam;
  const ExamCard({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    final isPast = exam.dateTime.isBefore(now);
    final isToday = exam.dateTime.day == now.day &&
        exam.dateTime.month == now.month &&
        exam.dateTime.year == now.year;

    Color cardColor;
    if (isPast) {
      cardColor = Colors.grey.shade300; //siva za pominat ispit
    } else if (isToday) {
      cardColor = Colors.yellow.shade300; //zolta za denesen ispit
    } else {
      cardColor = Colors.green.shade300; //zelena za iden ispit
    }

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/details", arguments: exam);
      },
      child: Card(
        color: cardColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                exam.subject,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(Icons.calendar_month_sharp, size: 18, color: Colors.blue),
                  const SizedBox(width: 6),
                  Text("${exam.dateTime.day}.${exam.dateTime.month}.${exam.dateTime.year}",
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.access_time_sharp, size: 18, color: Colors.deepPurple),
                  const SizedBox(width: 6),
                  Text("${exam.dateTime.hour}:${exam.dateTime.minute.toString().padLeft(2, '0')}",
                      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.room_sharp, size: 18, color: Colors.brown),
                  const SizedBox(width: 6),
                  Text("Prostorii: ${exam.classrooms.join(', ')}",
                      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
