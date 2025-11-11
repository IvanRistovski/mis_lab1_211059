import 'package:flutter/material.dart';

class TimeUntilLabel extends StatelessWidget {
  final String text;
  const TimeUntilLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
    );
  }
}
