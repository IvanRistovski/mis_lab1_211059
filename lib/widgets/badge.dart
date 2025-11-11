import 'package:flutter/material.dart';

class NumberBadge extends StatelessWidget {
  final int total;
  const NumberBadge({super.key, required this.total});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Vkupno Ispiti:", style: TextStyle(fontSize: 16)),
          const SizedBox(width: 6),
          Badge(
            label: Text('$total'),
            backgroundColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
